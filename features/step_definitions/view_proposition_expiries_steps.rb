Then(/^they see the time till trade$/) do
  expect(page).to have_content "Time to Trade: "
end

Then(/^they see the time till expiry$/) do
  expect(page).to have_content "Time to expiry: "
end