class Proposition < ApplicationRecord

  # validate :different_currencies

  belongs_to :currency_to, :class_name => "Currency"
  belongs_to :currency_from, :class_name => "Currency"
  
  belongs_to :trader
end
