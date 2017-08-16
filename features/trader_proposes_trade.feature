Feature: A trader proposition
  
  @javascript
  Scenario: A trader proposes a trade for investors
    Given there is a registered trader
      And the trader is logged in
      And currencies to trade
      And they are on the homepage
    When they click the the menu bar 
      And they click on propose
    Then they are taken to the proposition page
    When they fill in the title
      And they select the currency pair
      And they fill in the description
      And they click submit
    Then they have a new proposition

