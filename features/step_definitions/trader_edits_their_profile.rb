Given(/^there are some currencies$/) do
  @currency1 = Currency.create!(name: "BTC")
  @currency2 = Currency.create!(name: "USD")
  @currency3 = Currency.create!(name: "MaxCoin")
end

When(/^they go to their profile$/) do
  visit(edit_trader_registration_path)
end

When(/^they fill in a new bio$/) do
  fill_in 'Bio', :with => "Mad Man. Invented his own crypto: MaxCoin"
end

When(/^they select their favourite currency$/) do
  select 'MaxCoin', :from => 'Favourite coin'
end

When(/^they update their account$/) do
  fill_in "Current password", :with => "password"
  click_on('Update')
end

Then(/^they have updated their profile$/) do
  @trader.reload
  expect(@trader.bio).to eq("Mad Man. Invented his own crypto: MaxCoin")
end



