class HandHighCard
  def find_high_card cards
   sorted_cards = cards.sort {|x,y| y.number_value <=> x.number_value}
   sorted_cards[0]
  end
end