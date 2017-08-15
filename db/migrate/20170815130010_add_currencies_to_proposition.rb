class AddCurrenciesToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :currency1_id, :integer
    add_column :propositions, :currency2_id, :integer
  end
end
