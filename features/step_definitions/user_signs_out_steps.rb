When(/^they click Logout$/) do
  click_on "Logout"
end

Then(/^they will be logged out$/) do
  expect(page).to have_content "Signed out successfully"
end