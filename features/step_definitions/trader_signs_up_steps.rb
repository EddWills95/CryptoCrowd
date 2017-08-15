Given(/^They are on the trader sign up page$/) do
  visit new_trader_registration_path
end

Then(/^they have a new trader account$/) do
  expect(Trader.count).to eq(1)  
end