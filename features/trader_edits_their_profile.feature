Feature: Trader edits their profile
  @wip
  Scenario: Trader edits their profile
    Given there is a registered trader
      And the trader is logged in
      And they are on the homepage
      And there are some currencies
    When they go to their profile
      And they fill in a new bio
      And they select their favourite currency
      And they update their account
    Then they have updated their profile
