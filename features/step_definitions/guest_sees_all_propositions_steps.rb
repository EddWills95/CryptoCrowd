Given(/^there are some propositions$/) do
  @currency1 = Currency.create!(name: "BTC")
  @currency2 = Currency.create!(name: "USD")
  @trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
  @proposition = Proposition.create!(title: "Buy!!", description: "please", currency_to_id: @currency1.id, currency_from_id: @currency2.id, trader_id: @trader.id)
  @proposition2 = Proposition.create!(title: "Sell!", description: "$4300 is top", currency_to_id: @currency1.id, currency_from_id: @currency2.id, trader_id: @trader.id)
end

Then(/^they see the propositions$/) do
  expect(page).to have_content("Buy!!")
end

Then(/^they see the names currencies involved$/) do
  expect(page).to have_content("BTC")
  expect(page).to have_content("USD") 
end

Then(/^they see the trader who proposed it$/) do
  expect(page).to have_content("Max Keiser")
end

Then(/^they see the number of votes it has$/) do
  expect(page).to have_content("325")
end