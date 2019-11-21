#!/usr/bin/env ruby
class Hand

  @card1
  @card2

  def initialize()
    @card1 = Card.new(rand(1..10))
    @card2 = Card.new(rand(1..10))
  end

  def getHandSum()
    return @card1.getCardNumber() + @card2.getCardNumber()
  end

  def getCard1Value()
    return @card1.getCardNumber()
  end

  def getCard2Value()
    return @card2.getCardNumber()
end
