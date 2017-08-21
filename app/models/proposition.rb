class Proposition < ApplicationRecord

  acts_as_votable

  validate :time_span
  validate :different_currencies

  belongs_to :currency_to, :class_name => "Currency"
  belongs_to :currency_from, :class_name => "Currency"
  
  belongs_to :trader

  has_many :comments

  def total_votes
    self.votes_for.size - self.get_downvotes.size
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
