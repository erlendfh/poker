Feature: Game
  As a game facilitator
  I want to determine the winning player

  Scenario: High card game
    Given player "one" has hand "3K 4H 5S 6K 8H"
    And player "two" has hand "2K 3H 10S 4K 6H"
#    When I submit
    Then player "two" wins the game