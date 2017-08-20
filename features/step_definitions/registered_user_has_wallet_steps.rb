When(/^they click on Wallet$/) do
  click_on "Wallet"
end

Then(/^they see a list of all their coins$/) do
  save_and_open_page
  expect(page).to have_content "BTC:"
  expect(page).to have_content "ETH:"
  expect(page).to have_content "LTC:"
end
