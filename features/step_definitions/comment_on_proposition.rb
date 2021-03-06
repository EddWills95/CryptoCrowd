Given(/^the investor is signed in$/) do
  page.set_rack_session('warden.user.investor.key' => Investor.serialize_into_session(@investor))
end

Given(/^they are on a proposition page$/) do
  visit(proposition_path(@proposition))
end

When(/^they write in the comment box$/) do
  fill_in 'comment[body]', :with => "This looks like a great idea"
end

When(/^they press publish$/) do
  click_on "Publish"
end

Then(/^the comment is shown$/) do
  expect(page).to have_content "This looks like a great idea"
end

