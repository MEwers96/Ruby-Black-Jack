#!/usr/bin/env ruby
class Hand
  @cardList
  def initialize()
    @cardList = []
    @cardList << Card.new(rand(1..10))
    @cardList << Card.new(rand(1..10))
  end

  def addCardToHand()
    newCard = Card.new(rand(1..10))
    @cardList.push(newCard)
    print "You have received a #{newCard.getCardName}\nYour new sum: #{getHandSum()}\n"
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
      toString.concat("Card #{count} = #{card.getCardNumber()}\n")
      count += 1
    end

    toString.concat("Your sum: #{getHandSum}\n")
    return toString
  end
end
