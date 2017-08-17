class AddAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bio, :text
    add_column :users, :favourite_coin, :string
    add_column :users, :success_rate, :float
  end
end
