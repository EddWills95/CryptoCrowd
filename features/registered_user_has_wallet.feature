Feature: A registered User has a wallet of coins
  
  @wip
  Scenario: An investor checks the amount of coins in their wallet
    Given there is a registered investor
      And the investor is logged in
      And they are on the homepage
    When they click on the menu bar
      And they click on Wallet
    Then they see a list of all their coins

   
  Scenario: A trader checks the amount of coins in their wallet
    Given there is a registered trader
      And the trader is logged in
      And they are on the homepage
    When they click on the menu bar
      And they click on Wallet
    Then they see a list of all their coins
