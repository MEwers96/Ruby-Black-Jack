#!/usr/bin/env ruby
load "Card.rb"
load "Hand.rb"

aiHand = Hand.new()
playerHand = Hand.new()

print playerHand.getCardstoString()

while playerHand.getHandSum() < 21
  print "Would you like to hit for another card?\nplease enter y/n\n"
  userInput = gets.chomp
  if userInput == "y"
    playerHand.addCardToHand()
    if playerHand.getHandSum() >= 21
      print "Bust! your hand is over 21"
    end
  end
end
