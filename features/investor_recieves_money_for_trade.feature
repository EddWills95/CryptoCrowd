Feature: Investor gets return on pledge
  
  Scenario: Investor's wallet balance increases
    Given there is a registered investor
      And the investor is signed in
      And they have funds in their wallet
      And there are some propositions
    When they pledge on an proposition
      And the proposition is successful
    Then they see an increase in their funds