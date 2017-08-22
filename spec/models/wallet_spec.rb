require 'rails_helper'

RSpec.describe Wallet, type: :model do
  describe "available currencies" do
    before do 
      @investor = Investor.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
      @investor.wallet.btc = 0.00432
      @trader = Trader.create!(email: "someoneelse@nowhere.com", name: "Jackie Chan", password: "password", password_confirmation: "password")
      @currency1 = Currency.create!(name: "BTC")
      @currency2 = Currency.create!(name: "USD")
    end
  
    it "should return an array of currencies with value" do
      expect(@investor.wallet.available).to eq([["btc"]])
    end 
  end
end
