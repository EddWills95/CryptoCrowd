require 'rails_helper'

RSpec.describe Proposition, type: :model do
  describe "references two currencies" do
    before do
      @currency1 = Currency.create!(name: "BTC")
      @currency2 = Currency.create!(name: "USD")
      @trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
      @proposition = Proposition.create!(title: "buy", description: "please", currency_to_id: @currency1.id, currency_from_id: @currency2.id, trader_id: @trader.id)
    end

    it "should have access to the currency name" do
      expect(@proposition.currency_to.name).to eq("BTC")
      expect(@proposition.currency_from.name).to eq("USD")
    end
  end
end
