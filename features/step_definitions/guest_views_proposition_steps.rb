When(/^they click on a proposition$/) do
  # find(".proposition-link-#{@proposition.id}").click
  click_on "Buy!!"
end

Then(/^they are taken to a proposition$/) do
  expect(page.current_path).to eq "/propositions/#{@proposition.id}"
end

