Given(/^there are some propositions that have traded$/) do
  @currency1 = Currency.create!(name: "BTC")
  @currency2 = Currency.create!(name: "USD")
  @trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
  @proposition = Proposition.create!(
    title: "Buy!!", description: "please", 
    currency_to_id: @currency1.id, currency_from_id: @currency2.id, 
    trader_id: @trader.id,
    trade: DateTime.now - 10.days,
    expire: DateTime.now - 5.days,
    order_type: "buy"
    )
end

Then(/^they see a trade past message$/) do
  expect(page).to have_content "Trade has been executed"
end

Then(/^they see the time till expiry$/) do
  expect(page).to have_content "Expire Time:"
end



