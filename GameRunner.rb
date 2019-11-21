#!/usr/bin/env ruby
require "Card.rb"
require "Hand.rb"

aiHand = Hand.new()
playerHand = Hand.new()

print "Card 1 = "
print playerHand.getCard1Value().t_s
print "Card 2 = "
print playerHand.getCard2Value().t_s
