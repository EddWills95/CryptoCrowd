Feature: A registered User has a wallet of coins
  
  @javascript 
  Scenario: A user checks the amount of coins in their wallet
    Given there is a registered investor
      And the investor is signed in
      And they are on the homepage
    When they click on the menu bar
      And they click on Wallet
    Then they see a list of all their coins
