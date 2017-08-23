Then(/^they see the time till trade$/) do
  save_and_open_page
  expect(page).to have_content "Time to Trade:"
end

Then(/^they see the time till expiry$/) do
  expect(page).to have_content "Time to Expire:"
end