class HandHighCard
  def find_high_card cards
   cards.sort! {|x,y| y.number_value <=> x.number_value}
   cards[0]
  end
end