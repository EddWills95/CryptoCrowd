Feature: Investor Signs up
  
  @javascript
  Scenario: Investor signs up to trade and invest
  Given They are on the investor sign up page
  When they enter their email
    And they enter their password
    And they confirm their password
    And they register
  Then they have a new account
    And they get sent to the homepage
    And they recieve an email asking them to confirm their email
