require 'player'
require 'card'
class Game
  attr_reader :table_cards
  attr_reader :players
  
  def initialize
    @players = []
  end
  
  def table_cards=(cards)
    @table_cards = parse_cards(cards)
  end
  
  def add_player(name, hand)
    @players << Player.new(name, @table_cards + parse_cards(hand))
  end
    
  def winner    
    winner = @players.first
    @players.each { |player| winner = player if player.score > winner.score }
    winner.name
  end
  
  private
  def parse_cards cards
    cards.split.map { |c| Card.new(c) }
  end
  
end