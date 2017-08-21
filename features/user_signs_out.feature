Feature: A User Signs Out
  
  Scenario: A Trader Signs Out
    Given there is a registered trader
      And the trader is logged in
      And they are on the homepage
    When they click on the menu bar
      And they click Logout
    Then they will be logged out

  Scenario: An Investor Signs Out
    Given there is a registered investor
      And the investor is logged in
      And they are on the homepage
    When they click on the menu bar
      And they click Logout
    Then they will be logged out  