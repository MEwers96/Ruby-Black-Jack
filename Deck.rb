#!/usr/bin/env ruby
class Deck
    @cardList
    @@suitList = ["Hearts", "Diamonds", "Clubs", "Spades"]
    @@nameForTen = ["Jack", "Queen", "King", "Ten"]

    def initialize()
        createDeck()
    end

    def pullCard()
        if getCardCount == 0
            print "\nDeck out of Cards! Reshuffling Deck!\n" 
            createDeck()
        end
        randomCard =  rand(0..@cardList.length())
        pulledCard = @cardList.delete_at(randomCard)
        return pulledCard
    end

    def getCardCount()
        return @cardList.length()
    end

    def createDeck()
        @cardList = []
        for suit in @@suitList
            for index in 1..13
                if index >= 10
                    @cardList.push(Card.new(10, suit, @@nameForTen[index-10]))
                else
                    @cardList.push(Card.new(index, suit))
                end 
            end
        end
    end
end

        
