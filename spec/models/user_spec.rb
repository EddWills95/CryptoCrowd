require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @investor = Investor.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
    @investor.wallet.btc = 0.00432
    @trader = Trader.create!(email: "someoneelse@nowhere.com", name: "Jackie Chan", password: "password", password_confirmation: "password")
    @currency1 = Currency.create!(name: "BTC")
    @currency2 = Currency.create!(name: "USD")
  end

  describe "crypto wallet" do    
    it "should store different cryptocurrencies" do
      expect(@investor.wallet.list).to include("btc" => 0.00432)
    end
  end

  describe "pledging to a proposition" do 
    before do
      @proposition = Proposition.create!(title: "Buy!!", description: "please", currency_to_id: @currency1.id, currency_from_id: @currency2.id, trader_id: @trader.id)
      Pledge.create!(user: @investor, proposition: @proposition, btc_value: (0.001))
    end

    it "should move money from wallet to proposition" do
      expect(@proposition.pledges.first.user).to eq(@investor)
      expect(@proposition.pledges.first.btc_value).to eq(0.001)
    end
  end

end
