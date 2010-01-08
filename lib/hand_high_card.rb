class HandHighCard
  def find_high_card hand
    cards = parse_hand hand
    cards[0].join
  end
  
  def parse_hand hand
    cards = hand.split.map { |c| c.split "" }
    cards.sort! {|x,y| y[0].to_i <=> x[0].to_i}
  end
end