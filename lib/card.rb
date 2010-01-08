class Card
  def initialize(val)
    @value = val.split ""
    @picture_cards = {
      "J" => 11,
      "Q" => 12,
      "K" => 13,
      "A" => 14
    }
  end
  
  def value
    @value.join
  end
  
  
  def number_value
    if @picture_cards.key? @value[0]
      @picture_cards[@value[0]]
    else
      @value[0].to_i
    end
  end
  
  def suite
    @value[1]
  end

end