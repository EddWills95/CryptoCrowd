class Proposition < ApplicationRecord

  validate :different_currencies

  has_many :currencies

  belongs_to :trader

  def different_currencies
    unless self.currency1_id === self.currency2_id
      return true
    end
  end
end
