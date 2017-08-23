require 'rails_helper'

RSpec.describe Proposition, type: :model do
  before do
    @currency1 = Currency.create!(name: "BTC")
    @currency2 = Currency.create!(name: "USD")
    @investor = Investor.create!(email: "investor@money.org", name: "Charles Xavier", password: "password", password_confirmation: "password")
    @trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
    
    # Set up proposition with trade and expire times
    @temp_date = DateTime.now
    @proposition = Proposition.create!(
      title: "buy", description: "please", 
      currency_to_id: @currency2.id, currency_from_id: @currency1.id, 
      trader_id: @trader.id,
      trade: @temp_date + 2.second,
      expire: @temp_date + 3.second 
    )
  end
  
  describe "references two currencies" do
    it "should have access to the currency name" do
      expect(@proposition.currency_to.name).to eq("USD")
      expect(@proposition.currency_from.name).to eq("BTC")
    end
  end

  describe "upvoting" do
    before do
      @proposition.upvote_from @investor
      @proposition.upvote_from @investor
    end
    it "should increase the number of votes once" do
      expect(@proposition.total_votes).to eq(1)
    end
  end

  describe "expiration" do
    before do
      temp_date = DateTime.new(2017, 07, 06)
      @proposition.expire = temp_date + 7.days 
      # strange octal error here.
      @proposition.created_at = temp_date
    end

    it "should change the active state" do 
      expect(@proposition.expire.future?).to eq(false)
    end
  end

end


