Given(/^they are on the proposition page$/) do
  @user = @investor
  @user.wallet.update(btc: 0.00123)
  visit(proposition_path(@proposition))
end

When(/^they select a currency and amount$/) do
  # element not found. but can be seen with a save and open page
  select "btc", :from => 'pledge_currency'
  fill_in "pledge_amount[]", with: 0.001
end

When(/^they pledge$/) do
  click_on "CreatePledge"
end

Then(/^they have a new pledge$/) do
  @investor.reload
  expect(@investor.pledges.first.btc_value).to eq(0.001)
end

Then(/^the value in their wallet goes down$/) do
  expect(@investor.wallet.btc).to eq(0.00023)
end
