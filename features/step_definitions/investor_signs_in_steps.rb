Given(/^there is a registered investor$/) do
  @investor = Investor.new(email: "example@somewhere.org", password: "password", password_confirmation: "password")
  @investor.skip_confirmation!
end

When(/^they click on the menu bar$/) do
  find("#menu-bars").click
end

When(/^they click on investor sign in$/) do
  click_on 'Investor Login'
end

Then(/^they are on the sign in page$/) do
  expect(page.current_path).to eq(new_investor_session_path)
end

When(/^they fill in their email$/) do
  fill_in 'email', :with => "example@somewhere.org"
end

When(/^they fill in their password$/) do
  fill_in 'password', :with => "password"
end

When(/^they press sign in$/) do
  click_on 'Log In'
end

Then(/^they are signed in$/) do
  expect(current_user.email).to eq "example@somewhere.org"
end