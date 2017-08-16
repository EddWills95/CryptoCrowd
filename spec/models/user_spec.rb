require 'rails_helper'

RSpec.describe User, type: :model do
  describe "crypto wallet" do
    before do
      @investor = Investor.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
    end

    it "should store different cryptocurrencies" do
      expect(@investor.wallet.list).to eq({btc: 0.00432})
    end
  end
end
