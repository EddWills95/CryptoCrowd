Feature: User visits trader page

  Scenario: User goes to a trader's page
    Given there are some propositions
      And they are on the homepage
    When they click on a trader name
    Then they go to the trader's page
      And they see the name of the trader
      And they see the performance of the trader