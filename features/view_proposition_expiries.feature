Feature: Proposition Expires
  
  Scenario: A User sees the remaining times on a proposition
  Given there are some propositions
  When they are on a proposition page
  Then they see the time till trade
    And they see the time till expiry

  @wip
  Scenario: A User sees a proposition past trade time
  Given there are some propositions that have traded
  When they are on a proposition page
  Then they see a trade past message
    And they see the time till expiry