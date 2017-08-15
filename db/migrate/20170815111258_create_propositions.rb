class CreatePropositions < ActiveRecord::Migration[5.1]
  def change
    create_table :propositions do |t|
      t.string :title
      t.text :description
      t.references :trader

      t.timestamps
    end
  end
end
