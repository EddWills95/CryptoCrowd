class Proposition < ApplicationRecord

  acts_as_votable

  # validate :different_currencies

  belongs_to :currency_to, :class_name => "Currency"
  belongs_to :currency_from, :class_name => "Currency"
  
  belongs_to :trader

  has_many :comments

  has_many :pledges

  def total_votes
    self.votes_for.size - self.get_downvotes.size
  end
end
