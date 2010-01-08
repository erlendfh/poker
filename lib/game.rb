require 'player'
require 'card'

module Poker

  class InvalidNumberOfPlayers < StandardError
    def message
      "Must have at least two players"
    end
  end

  class TieGame < StandardError; def message; "Game is a tie" ; end ; end

  class Game

    attr_reader :table_cards
    attr_reader :players

    def initialize
      @players = []
    end

    def table_cards=(cards)
      @table_cards = Game.parse_cards(cards)
    end

    def add_player(name, hand)
      @players << Player.new(name, @table_cards + Game.parse_cards(hand))
    end

    def winner
      raise InvalidNumberOfPlayers if @players.size < 2

      # Sort descending by score
      @players.sort! {|x, y| y.score <=> x.score }

      raise TieGame if @players[1].score == @players.first.score

      @players.first
    end

    def Game.parse_cards cards
      cards.split.map { |c| Card.new(c) }
    end

  end
end