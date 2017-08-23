require 'rails_helper'

RSpec.describe Trader, type: :model do
  describe "trader performance" do
    before do 
      @currency1 = Currency.create!(name: "BTC")
      @currency2 = Currency.create!(name: "USD")
      @investor = Investor.create!(email: "investor@money.org", name: "Charles Xavier", password: "password", password_confirmation: "password")
      @trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
      
      # Set up proposition with trade and expire times
      @temp_date = DateTime.now - 20.days
      @proposition = Proposition.create!(
        title: "buy", description: "please", 
        currency_to_id: @currency2.id, currency_from_id: @currency1.id, 
        trader_id: @trader.id,
        trade: @temp_date + 2.days,
        expire: @temp_date + 10.days 
      )
      @proposition2 = Proposition.create!(
        title: "buy", description: "pleaseasdf", 
        currency_to_id: @currency2.id, currency_from_id: @currency1.id, 
        trader_id: @trader.id,
        trade: @temp_date + 2.days,
        expire: @temp_date + 10.days 
      )
    end


    it "should return the trader performance" do
      
      expect(@trader.performance).to eq(100)

    end
  end
end
