Feature: Investor Signs in
  @wip @javascript
  Scenario: Investor signs into the site
  Given there is a registered investor 
    And they are on the homepage
  When they click on the menu bar
    And they click on investor sign in
  Then they are on the sign in page
  When they fill in their email
    And they fill in their password
    And they press sign in
  Then they are signed in