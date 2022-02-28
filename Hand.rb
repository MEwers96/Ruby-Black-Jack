#!/usr/bin/env ruby
class Hand
  @cardList
  @handName
  @availableDeck
  def initialize(handName, deck)
    @cardList = []
    @cardList.push(deck.pullCard())
    @cardList.push(deck.pullCard())
    @handName = handName
    @availableDeck = deck
  end

  def addCardToHand()
    newCard = @availableDeck.pullCard()
    @cardList.push(newCard)
    print "\n#{@handName} has received a #{newCard.getCardName} of #{newCard.getCardSuit}\n#{@handName}'s new sum: #{getHandSum()}\n"
  end

  def getHandSum()
    finalSum = 0
    for card in @cardList
      if card.getCardNumber == 1
        finalSum += 11
        if finalSum > 21
          finalSum -=10
        end
      else
        finalSum += card.getCardNumber()
      end
    end
    
    return finalSum
  end

  def checkBust()
    if getHandSum() > 21
      return true
    else
      return false

    end
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

    toString.concat("\n#{@handName}'s sum: #{getHandSum()}\n\n")
    return toString
  end

  def getPlayerName()
    return @handName
  end

end