class Proposition < ApplicationRecord
  require 'net/http'

  acts_as_votable

  validate :time_span
  validate :different_currencies
  validates :order_type, presence: true

  belongs_to :currency_to, :class_name => "Currency"
  belongs_to :currency_from, :class_name => "Currency"
  
  belongs_to :trader

  has_many :comments
  has_many :pledges

  def successful
    if self.order_type === "buy"
      if get_trade_price < get_expire_price
        pay_investors
        self.success = true
      else
        self.success = false
      end
    else 
      if get_trade_price > get_expire_price
        pay_investors
        self.success = true
      else
        self.success = false
      end
    end
    self.save     
  end

  def pay_investors
    # change / orig
    change = ((self.price_at_trade).to_f / (self.price_at_expire).to_f)

    self.pledges.each do |pledge|
      current = pledge.user.wallet.btc
      investment = pledge.btc_value
      invest_return = investment * change
      total = current + invest_return
      pledge.user.wallet.update(btc: total)
    end  

  end
 
  def get_trade_price
    uri = URI("https://min-api.cryptocompare.com/data/pricehistorical?fsym=#{self.currency_from.name}&tsyms=#{self.currency_to.name}&ts=#{self.trade.to_time.to_i}")
    result = JSON.parse(Net::HTTP.get(uri))
    price = result["#{self.currency_from.name}"]["#{self.currency_to.name}"]
    self.update_attribute(:price_at_trade, price)
    price
  end

  def get_expire_price
    uri = URI("https://min-api.cryptocompare.com/data/pricehistorical?fsym=#{self.currency_from.name}&tsyms=#{self.currency_to.name}&ts=#{self.expire.to_time.to_i}")
    result = JSON.parse(Net::HTTP.get(uri))
    price = result["#{self.currency_from.name}"]["#{self.currency_to.name}"]
    self.update_attribute(:price_at_expire, price)
    price
  end

  def total_votes
    self.votes_for.size - self.get_downvotes.size
  end

  def traded?
    self.trade < DateTime.now ? true : false
  end 

  def active?
    self.expire < DateTime.now ? true : false
  end

  private
  def time_span
    self.expire > self.trade
  end

  def different_currencies
    self.currency_to != self.currency_from
  end
end
