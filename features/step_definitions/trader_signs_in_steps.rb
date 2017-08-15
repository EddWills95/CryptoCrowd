Given(/^there is a registered trader$/) do
  @trader = Trader.new(email: "example@somewhere.org", password: "password", password_confirmation: "password")
  @trader.skip_confirmation!
  @trader.save
end

When(/^they click on trader sign in$/) do
  click_on 'Trader Login'
end

Then(/^they are on the trader sign in page$/) do
  expect(page.current_path).to eq('/traders/sign_in')
end