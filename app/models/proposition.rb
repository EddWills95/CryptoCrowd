class Proposition < ApplicationRecord
  require 'net/http'

  acts_as_votable

  validate :time_span
  validate :different_currencies

  belongs_to :currency_to, :class_name => "Currency"
  belongs_to :currency_from, :class_name => "Currency"
  
  belongs_to :trader

  has_many :comments

  after_create :timer

  def timer
    binding.pry
    delay(:run_at => trade).get_trade_price
   # delay(:run_at => expire).get_expire_price
  end

  def get_trade_price
    @uri = URI("https://min-api.cryptocompare.com/data/price?fsym=#{self.currency_to.name}&tsyms=#{self.currency_from.name}")
    @result = JSON.parse(Net::HTTP.get(@uri))
    self.price_at_trade = @result["#{self.currency_to}"]
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
