$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'game'
require 'spec'

TABLE_CARDS = "3K 4H 5S 6K 8H"

module Poker
  describe Game do

    examples = [
            [TABLE_CARDS, "9K 10H", "JS AK", "player two"],
            [TABLE_CARDS, "JS AK", "9K 10H", "player one"]
    ]

    it "should identify the winner" do
      examples.each do |ex|
        game = Game.new
        game.table_cards = ex[0]
        game.add_player "player one", ex[1]
        game.add_player "player two", ex[2]
        game.winner.name.should == ex[3]
      end
    end

    it "should identify a tie" do
      game = Game.new
      game.table_cards = TABLE_CARDS
      game.add_player "one", "JS AK"
      game.add_player "two", "JD AH"
      lambda {game.winner}.should raise_error TieGame
    end

    it "should raise an error if there is less than two players" do
      game = Game.new
      game.table_cards = TABLE_CARDS
      game.add_player "Something ill", "AH AQ"
      lambda {game.winner}.should raise_error InvalidNumberOfPlayers
    end

    it "should identify the winner's hand" do
      game = Game.new
      game.table_cards = TABLE_CARDS
      game.add_player "one", "JS AK"
      game.add_player "two", "9K 10H"
      game.winner.best_hand.join(" ").should == "AK JS 8H 6K 5S"
    end

  end
end