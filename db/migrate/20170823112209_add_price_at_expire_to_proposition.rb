class AddPriceAtExpireToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :price_at_expire, :float
  end
end
