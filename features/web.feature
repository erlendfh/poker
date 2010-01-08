Feature: Web interface
  To enable users to determine best hand
  Users should be able to input the hands and see the results

Scenario: Start page
  When I am on "the start page"
  Then I should see "Hand 1"
  And  I should see "Hand 2"
  And  I should see "Table Cards"
  And  I should see the button "Submit"

Scenario: Fill in score
  Given I am on "the start page"
  When  I fill in "Hand 1" with "AH AC"
  And   I fill in "Hand 2" with "KC KD"
  And   I fill in "Table Cards" with "1H 2C 3D"
  And   I press "Submit"
  Then  I should be on "the start page"
  And   I should see "Winner"
  And   I should see "Winner Hand"

Scenario: High Card, Show winner
  Given I am on "the start page"
  When  I fill in "Hand 1" with "QH AC"
  And   I fill in "Hand 2" with "KC JD"
  And   I fill in "Table Cards" with "1H 2C 3D"
  And   I press "Submit"
  Then  I should be on "the start page"
  And   I should see "Winner: Hand 1"
  And   I should see "Winner Hand: AC QH 3D 2C 1H"

