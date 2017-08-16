class AddVotesToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :votes, :integer
  end
end
