class AddSuccessToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :success, :boolean
  end
end
