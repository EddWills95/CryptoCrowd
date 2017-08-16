class Currency < ApplicationRecord

  has_many :currency_tos, :class_name => "Proposition", :foreign_key => 'currency_to_id'
  has_many :currency_froms, :class_name => "Proposition", :foreign_key => 'currency_from_id'

end
