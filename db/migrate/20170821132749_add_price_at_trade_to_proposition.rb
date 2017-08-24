class AddPriceAtTradeToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :price_at_trade, :float
  end
end
