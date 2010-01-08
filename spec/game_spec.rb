$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'game'
require 'spec'

describe Game do
  
  examples = [
    ["3K 4H 5S 6K 8H", "9K 10H", "JS AK", "player two"],
    ["3K 4H 5S 6K 8H", "JS AK", "9K 10H", "player one"]
  ]
  
  it "should select the winning player, given two hands" do
    examples.each do |ex|
      game = Game.new
      game.table_cards = ex[0]
      game.add_player "player one", ex[1]
      game.add_player "player two", ex[2]
      game.winner.should == ex[3]
    end
  end
  
end