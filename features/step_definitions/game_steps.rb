# encoding: utf-8
$:.unshift(File.dirname(__FILE__) + '/../../lib')

Given /^at (.*) har (.*)$/ do |player_name, hand|
#  player = Game.player player_name
#  player.hand = hand
end
Given /^(.*) har (.*)$/ do |player_name, hand|
#  player ||= Game.player player_name
  pending
end
Then /^skal (.*) vinne$/ do |spiller|
  pending
end