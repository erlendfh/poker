class Card
  def initialize(val)
    matches = val.match /^(.+)(.)$/
    @value = matches[1]
    @suite = matches[2]
    
    
    @picture_cards = {
      "J" => 11,
      "Q" => 12,
      "K" => 13,
      "A" => 14
    }
  end
  
  def to_s
    @value + @suite
  end
  
  
  def number_value
    if @picture_cards.key? @value
      @picture_cards[@value]
    else
      @value.to_i
    end
  end
  
  def suite
    @suite
  end

end