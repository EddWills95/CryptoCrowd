Given(/^they are on the homepage$/) do
  visit '/'
end

Given(/^they click on propose$/) do
  binding.pry
  click_on 'Propose Trade'
end

Then(/^they are taken to the proposition page$/) do
  expect(page.current_path).to eq new_proposition_path
end

When(/^they fill in the title$/) do
  fill_in 'title', :with => "BUY ALL THE BITCOIN"
end

When(/^they select the currency pair$/) do
  select 'USD', :from => 'currency1'
  select 'BTC', :from => 'currency1'
end

When(/^they fill in the description$/) do
  fill_in 'description', :with => "Bitcoin to the moooooooooo00nn"
end

When(/^they click submit$/) do
  click_on 'submit'
end

Then(/^they have a new proposition$/) do
  expect(Proposition.count).to eq(1)
end