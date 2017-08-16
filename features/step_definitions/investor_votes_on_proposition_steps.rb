Given(/^the investor is logged in$/) do
  page.set_rack_session('warden.user.investor.key' => Investor.serialize_into_session(@investor))
end

When(/^they click upvote on a proposition$/) do
  find("#upvote-#{@proposition.id}").click
end

Then(/^the number of votes increases$/) do
  sleep(2)
  binding.pry
  expect(@proposition.total_votes).to eq(1)
end