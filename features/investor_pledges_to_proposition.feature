Feature: An investor pledges
  
  @javascript
  Scenario: An investor pledges some money from their wallet to a proposition
    Given there is a registered investor
      And the investor is logged in
      And there are some active propositions
      And they are on the proposition page
    When they select a currency and amount
      And they pledge
    Then they have a new pledge
      And the value in their wallet goes down