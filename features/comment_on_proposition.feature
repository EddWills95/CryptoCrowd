Feature: Comment on proposition
  
  @wip @javascript 
  Scenario: Investor Comments on a proposition
    Given there are some propositions
      And there is a registered investor
      And the investor is signed in
      And they are on a proposition page
    When they write in the comment box and press enter
    Then the comment is shown