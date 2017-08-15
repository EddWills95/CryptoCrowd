Given(/^there is a registered investor$/) do
  @investor = Investor.new(email: "example@somewhere.org", password: "password", password_confirmation: "password")
  @investor.skip_confirmation!
  @investor.save
end

When(/^they click on the menu bar$/) do
  find("#menu-bars").click
end

When(/^they click on investor sign in$/) do
  click_on "Investor Login"
end

Then(/^they are on the sign in page$/) do
  expect(page.current_path).to eq('/investors/sign_in')
end

When(/^they fill in their email$/) do
  save_and_open_page
  fill_in 'Email', :with => "example@somewhere.org"
end

When(/^they fill in their password$/) do
  fill_in 'Password', :with => "password"
end

When(/^they press sign in$/) do
  click_on 'Log in'
end

Then(/^they are signed in$/) do
  expect(page).to have_content("Signed in successfully")
end