$:.unshift(File.join(File.dirname(__FILE__), %w[.. lib]))
require 'hand_pair'
require 'card'
require 'spec'

describe HandPair do

  it "should find a pair in hand" do
    pair = HandPair.new("AS AD 2C 3C 4C")
    pair.matches.should == true

  end

end