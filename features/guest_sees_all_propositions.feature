Feature: A guest visits the site
  @wip
  Scenario: A guest visits and sees all propositions by votes
  Given there are some propositions
    And they are on the homepage
  Then they see the propositions
    And they see the currencies involved