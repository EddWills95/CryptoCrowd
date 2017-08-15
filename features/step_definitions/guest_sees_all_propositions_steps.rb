Given(/^there are some propositions$/) do
  @trader = Trader.new(email: "example@somewhere.org", password: "password", password_confirmation: "password")
  @trader.skip_confirmation!
  @trader.save
  @proposition1 = Proposition.create!(title: "Buy Bitcoins!", description: "Bitcoin is up up up", currency1_id: 1, currency2_id: 2, trader_id: @trader.id)
  @proposition2 = Proposition.create!(title: "Sell!", description: "$4300 is top", currency1_id: 1, currency2_id: 2, trader_id: @trader.id)
end

Then(/^they see the propositions in order$/) do
  expect(page).to have_content("Buy Bitcoins!")
end
