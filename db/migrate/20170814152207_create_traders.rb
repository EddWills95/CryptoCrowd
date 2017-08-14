class CreateTraders < ActiveRecord::Migration[5.1]
  def change
    create_table :traders do |t|

      t.timestamps
    end
  end
end
