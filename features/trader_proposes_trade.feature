Feature: A trader proposition
  
  @wip @javascript
  Scenario: A trader proposes a trade for investors
    Given there is a registered trader
     And they are on the homepage
    When they click on the menu bar
      And they click on trader sign in
    Then they are on the trader sign in page
    When they fill in their email
      And they fill in their password
      And they press sign in
    Then they are signed in 
    When they are on the homepage
      And they click the the menu bar 
      And they click on propose
    Then they are taken to the proposition page
    When they fill in the title
      And they select the currency pair
      And they fill in the description
      And they click submit
    Then they have a new proposition

