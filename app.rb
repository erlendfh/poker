require 'rubygems'
require 'sinatra'
require 'erb'

$:.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'game'

get '/' do
  erb :index
end

post '/' do
  game = Poker::Game.new
  table_cards = params['table_cards']
  hand1 = params["hand1"]
  hand2 = params["hand2"]

  if table_cards && hand1 && hand2
    game.table_cards = table_cards
    game.add_player "Hand 1", hand1
    game.add_player "Hand 2", hand2
    @winner_name = game.winner.name
    @winner_hand = game.winner.best_hand.join(" ")    
  end

  erb :index
end
