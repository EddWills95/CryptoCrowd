Feature: Viewing individual proposition
  @wip
  Scenario: A guest views a proposition page
    Given there are some propositions
      And they are on the homepage
    When they click on a proposition
    Then they are taken to a proposition
      And they see information regarding the proposition