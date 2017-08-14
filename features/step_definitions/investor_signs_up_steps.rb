Given(/^They are on the investor sign up page$/) do
  visit new_investor_registration_path
end

When(/^they enter their email$/) do
  fill_in 'Email', :with => "example@somewhere.org"
end

When(/^they enter their password$/) do
  fill_in 'Password', :with => "password"
end

When(/^they conform their password$/) do
  fill_in 'Password confirmation', :with => "password"
end

When(/^they register$/) do
  click_on 'Sign up'
end

Then(/^they have a new account$/) do
  expect(Investor.count).to eq(1)
end

Then(/^they get sent to the homepage$/) do
  expect(page.current_path).to eq'/'
end

Then(/^they see a message welcoming them$/) do
  expect(page).to have_content("Welcome to CryptoCrowd")
end

Then(/^they recieve an email asking them to confirm their email$/) do
  expect(ActionMailer::Base.deliveries.length).to eq(1);
end