$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'hand_high_card'

describe HandHighCard do
  hand_examples = [
    ["1K 2H 3D 7K 4H", "7K"],
    ["2K 2H 3S 4K 6H", "6H"]
  #  ["2K 2H 12S 4K 6H", "12S"]
  ]
  
  it "should pick the highest card from hand" do
    hand_examples.each do |hand_with_highest|
      highcard = HandHighCard.new
      highcard.find_high_card(hand_with_highest[0]).should == hand_with_highest[1]
    end  
  end
  
  
end