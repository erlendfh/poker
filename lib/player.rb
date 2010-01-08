require 'hand_high_card'

class Player
  attr_reader :name, :cards
  
  def initialize(name, cards)
    @name = name
    @cards = cards
  end
  
  def score
    HandHighCard.new.find_high_card(@cards).number_value
  end
end