Feature: A guest visits the site

  Scenario: A guest visits and sees all propositions by votes
  Given there are some propositions
    And they are on the homepage
  Then they see the propositions
    And they see the names currencies involved
    And they see the trader who proposed it
    And they see the number of votes it has