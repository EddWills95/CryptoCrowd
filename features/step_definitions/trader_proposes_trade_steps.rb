# Given(/^they are on the homepage$/) do
#   visit '/'
# end

# Given(/^currencies to trade$/) do
#   Currency.create!(name: "BTC")
#   Currency.create!(name: "USD")
# end

# Given(/^they click the the menu bar$/) do
#   find("#menu-bars").click
# end

# Given(/^they click on propose$/) do
#   click_on 'Create Proposition'
# end

# Then(/^they are taken to the proposition page$/) do
#   expect(page.current_path).to eq new_trader_proposition_path(@trader)
# end

# When(/^they fill in the title$/) do
#   fill_in 'Title', :with => "BUY ALL THE BITCOIN"
# end

# When(/^they select the currency pair$/) do
#   select 'USD', :from => 'proposition[currency1_id]'
#   select 'BTC', :from => 'proposition[currency2_id]'
# end

# When(/^they fill in the description$/) do
#   fill_in 'Description', :with => "Bitcoin to the moooooooooo00nn"
# end

# When(/^they click submit$/) do
#   click_on 'Propose'
# end

# Then(/^they have a new proposition$/) do
#   expect(@trader.propositions.length).to eq(1)
# end