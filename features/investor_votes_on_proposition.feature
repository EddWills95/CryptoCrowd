Feature: Investor Votes on a proposition
  
  @javascript
  Scenario: Investor Up Votes a proposition
    Given there are some propositions 
      And there is a registered investor
      And the investor is logged in
      And they are on the homepage 
    When they click upvote on a proposition
    Then the number of votes increases