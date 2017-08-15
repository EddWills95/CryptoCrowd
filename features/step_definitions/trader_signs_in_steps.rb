Given(/^there is a registered trader$/) do
  @trader = Trader.new(email: "example@somewhere.org", password: "password", password_confirmation: "password")
  @trader.skip_confirmation!
  @trader.save
end

Then(/^they are on the trader sign in page$/) do
  visit new_trader_session_path
end