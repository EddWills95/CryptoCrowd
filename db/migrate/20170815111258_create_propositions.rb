class CreatePropositions < ActiveRecord::Migration[5.1]
  def change
    create_table :propositions do |t|
      t.string :title
      t.text :description
      t.references :trader
      t.references :currency_to
      t.references :currency_from
      
      t.timestamps
    end
  end
end
