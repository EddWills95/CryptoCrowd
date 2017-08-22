class CreatePledges < ActiveRecord::Migration[5.1]
  def change
    create_table :pledges do |t|
      t.references :user
      t.references :proposition 

      t.float :btc_value

      t.timestamps
    end
  end
end
