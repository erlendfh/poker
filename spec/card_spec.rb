$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'card'

describe Card do
  it "should return 6 for number value when card is 6H" do
    card = Card.new("6H")
    card.number_value.should == 6
    card.suite.should == "H"
  end
  
  it "should return 12 for number value when card is QK" do
    card = Card.new("QK")
    card.number_value.should == 12
    card.suite.should == "K"
  end

end
