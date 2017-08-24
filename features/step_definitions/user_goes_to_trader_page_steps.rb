When(/^they click on a trader name$/) do
  click_on "Max Keiser"
end

Then(/^they go to the trader's page$/) do
  expect(page.current_path).to eq("/traders/#{@trader.id}")
end

Then(/^they see the name of the trader$/) do
  expect(page).to have_content "Max Keiser"
end

Then(/^they see the performance of the trader$/) do
  expect(page).to have_content "Average Performance: 100.0%"
end

