class Proposition < ApplicationRecord

  acts_as_votable

  # validate :different_currencies

  belongs_to :currency_to, :class_name => "Currency"
  belongs_to :currency_from, :class_name => "Currency"
  
  belongs_to :trader

  def total_votes
    self.get_upvotes.size - self.get_downvotes.size
  end
end
