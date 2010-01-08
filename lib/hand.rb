
class Hand

  def initialize(cards_string)
    @cards = string_to_cards(cards_string)

  end

  def self.best_hand(cards)



  end

  def cards
    @cards
  end


  def string_to_cards hand
    hand.split.map { |c| Card.new(c) }
  end

end