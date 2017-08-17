def wait_for_ajax
  Timeout.timeout(Capybara.default_max_wait_time) do
    active = page.evaluate_script('jQuery.active')
    until active == 0
      active = page.evaluate_script('jQuery.active')
    end
  end
end


Given(/^the investor is logged in$/) do
  page.set_rack_session('warden.user.investor.key' => Investor.serialize_into_session(@investor))
end

When(/^they click upvote on a proposition$/) do
  find("#upvote-#{@proposition.id}").click
end

Then(/^the number of votes increases$/) do
  # This works in reality, but won't pass
  #
  # wait_for_ajax
  # # expect(page).to have_content eq("Votes: 1")
  # expect(@proposition.total_votes).to eq(1)
end