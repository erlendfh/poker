$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'game'

describe Game do
  it "should select the winning player, given two hands" do
    game = Game.new
    game.table_cards = "3K 4H 5S 6K 8H"
    game.add_player "player one", "9K 10H"
    game.add_player "player two", "JS AK"
    game.winner.should == "player two"
  end
end