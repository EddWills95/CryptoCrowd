class AddCurrenciesToWallet < ActiveRecord::Migration[5.1]
  def change
    add_column :wallets, :btc, :float
    add_column :wallets, :ltc, :float
    add_column :wallets, :eth, :float
  end
end
