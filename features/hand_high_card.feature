Feature: High Card
  As a user
  I want to identify the high card
  In order to find a winner
  
  Scenario: 5 different cards
   Given the hand "2K 2H 3S 4K 6H"
   Then the high card should be "6H"