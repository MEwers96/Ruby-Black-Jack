#!/usr/bin/env ruby
class Card

 @cardName
 @cardNumber
 @cardSuit

 @@suitList = ["Hearts", "Diamonds", "Clubs", "Spades"]
 @@nameForTen = ["Jack, Queen, King, Ten"]
 def initialize(randomGen)
   @cardNumber = randomGen
   setCardName()
 end


 def setCardName()
   case @cardNumber
    when 1
        @cardName = "Ace"
    when 2..9
        @cardName = @cardNumber.to_s
    when 10
        @cardName = @@nameForTen[rand(0..3)]
      end
    end


def setCardSuit()
  @cardSuit = @@suitList[rand(0..3)]
  return @cardSuit
end

 def getCardNumber()
   return @cardNumber
 end

 def getCardSuit()
   return @cardSuit
end
