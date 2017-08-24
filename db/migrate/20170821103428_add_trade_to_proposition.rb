class AddTradeToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :trade, :datetime
  end
end
