# language: en
#
# Rangering: http://www.thepokerforum.com/pokerhands.htm



Feature: Rangere hender
  For å kunne peke ut en vinner raskere på TV
  skal TV verten bli fortalt hvilken hånd som er høyest

  Scenario: Ett par slår høyeste kort
    Given hvit har 2K 2H 3S 4K 6H
    When at svart har AH KK QS 7R 9S
    Then skal hvit vinne

  Scenario: To par slår et par
    Given hvit har 2K 2H 3S 3K 6H
    When at svart har AH AK QS 7R 9S
    Then skal hvit vinne
