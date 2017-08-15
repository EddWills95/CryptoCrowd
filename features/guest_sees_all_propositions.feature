Feature: A guest visits the site

  Scenario: A guest visits and sees all propositions by votes
  Given there are some propositions
    And they are on the homepage

  Then they see the propositions in order