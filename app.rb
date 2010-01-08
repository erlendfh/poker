require 'rubygems'
require 'sinatra'

get '/' do
  html = <<-EOS
  <h1>Poker</h1>
  <p>
    <label for="lead">Hand 1</label><br/>
    <input type="text" id="hand1" name="hand1"/>
  </p>
  <p>
    <label for="from">Hand 2</label><br/>
    <input type="text" id="hand2" name="hand2"/>
  </p>
  <p>
    <label for="to">Table Cards</label><br/>
    <input type="text" id="table_cards" name="table_cards"/>
  </p>
  <input type="submit" value="Submit"/>
  <br/>
  EOS
  html
end