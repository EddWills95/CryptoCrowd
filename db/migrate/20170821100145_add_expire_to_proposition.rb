class AddExpireToProposition < ActiveRecord::Migration[5.1]
  def change
    add_column :propositions, :expire, :datetime
  end
end
