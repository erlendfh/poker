require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

post '/' do
  @winner_name = "TODO: name of winner"
  @winner_hand = "TODO: best hand"
  erb :index
end
