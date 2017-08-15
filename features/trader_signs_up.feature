Feature: Trader Signs up
  
  @wip
  Scenario: Trader signs up to trade and invest
  Given They are on the trader sign up page
  When they enter their email
    And they enter their password
    And they confirm their password
    And they register
  Then they have a new trader account
    And they get sent to the homepage

