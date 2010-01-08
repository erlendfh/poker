$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'hand_high_card'
require 'card'

describe HandHighCard do
  hand_examples = [
    ["1K 2H 3D 7K 4H", "7K"],
    ["2K 2H 3S 4K 6H", "6H"],
    ["2K 2H QS 4K 6H", "QS"],
    ["2K 2H 10S 4K 6H", "10S"]
  ]
  
  it "should pick the highest card from hand" do
    hand_examples.each do |hand_with_highest|
      highcard = HandHighCard.new
      highcard.find_high_card(parse_hand(hand_with_highest[0])).to_s.should == hand_with_highest[1]
    end  
  end
  

  
end