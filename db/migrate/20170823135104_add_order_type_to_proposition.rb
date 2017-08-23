class AddOrderTypeToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :order_type, :string
  end
end
