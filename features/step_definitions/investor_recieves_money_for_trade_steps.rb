Given(/^they have funds in their wallet$/) do
  @investor.wallet.update(btc: (3.42556))
  expect(@investor.wallet.btc).to eq(3.42556)
end

When(/^they pledge on an proposition$/) do
  @proposition.update(expire: DateTime.now)
  Pledge.create!(user_id: @investor.id, proposition_id: @proposition.id, btc_value: 1)
end

When(/^the proposition is successful$/) do
  expect(@proposition.successful).to eq(true)
end

Then(/^they see an increase in their funds$/) do
  expect(@investor.wallet.btc).to eq()
end

