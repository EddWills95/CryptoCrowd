Feature: Trader Signs in
  
  Scenario: Trader signs into the site
  Given there is a registered trader 
    And they are on the trader sign in page
  When they fill in their email
    And they fill in their password
    And they press sign in
  Then they are signed in