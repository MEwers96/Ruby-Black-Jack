#!/usr/bin/env ruby
class Hand
  @cardList
  @handName
  def initialize(handName)
    @cardList = []
    @cardList.push(Card.new(rand(1..10)))
    @cardList.push(Card.new(rand(1..10)))
    @handName = handName
  end

  def addCardToHand()
    newCard = Card.new(rand(1..10))
    @cardList.push(newCard)
    print "#{@handName} has received a #{newCard.getCardName} of #{newCard.getCardSuit}\n#{@handName}'s new sum: #{getHandSum()}\n"
  end

  def getHandSum()
    finalSum = 0
    for card in @cardList
      finalSum += card.getCardNumber()
    end
    return finalSum
  end

  def getCardValue(index)
    return @cardList[index].getCardNumber()
  end

  def getCardstoString()
    toString = ""
    count = 1
    for card in @cardList
      toString.concat("#{@handName} Card #{count} = #{card.getCardName()} of #{card.getCardSuit}\n")
      count += 1
    end

    toString.concat("#{@handName}'s sum: #{getHandSum()}\n\n")
    return toString
  end

  def getPlayerName()
    return @handName
  end

end
