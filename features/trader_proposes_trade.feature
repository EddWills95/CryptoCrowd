Feature: A trader proposition
  
  Scenario: A trader proposes a trade for investors
  Given they are on the homepage
    And they click on propose
  Then they are taken to the proposition page
  When they fill in the title
    And they select the currency pair
    And they fill in the description
    And they click submit
  Then they have a new proposition

