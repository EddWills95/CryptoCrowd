Then(/^they see the time till trade$/) do
  expect(page).to have_content "Trade Time:"
end

Then(/^they see the time till expiry$/) do
  expect(page).to have_content "Expire Time:"
end