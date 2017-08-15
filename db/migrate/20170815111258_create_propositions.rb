class CreatePropositions < ActiveRecord::Migration[5.1]
  def change
    create_table :propositions do |t|
      t.string :title
      t.text :description
      t.references :trader, foreign_key: true

      t.timestamps
    end
  end
end
