$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'game'

describe Game do
  it "should select the winning player, given two hands" do
    game = Game.new
    game.add_hand "player one", "3K 4H 5S 6K 8H"
    game.add_hand "player two", "2K 3H 10S 4K 6H"
    game.winner.should == "player two"
  end
end