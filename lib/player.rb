require 'hand_high_card'

class Player
  attr_reader :name, :cards
  
  def initialize(name, cards)
    @name = name
    @cards = cards
  end

  def best_hand
    @cards.sort! { |x,y| y.number_value <=> x.number_value }[0..4]
  end
  
  def score
    HandHighCard.new.find_high_card(@cards).number_value
  end
end