#!/usr/bin/env ruby
load "Card.rb"
load "Hand.rb"
load "Deck.rb"
playerContinue = true

deck = Deck.new()
while playerContinue
  aiHand = Hand.new("Ai", deck)
  playerHand = Hand.new("Player", deck)
  
  
  print playerHand.getCardstoString()
  while playerHand.getHandSum() < 21
    print "Would you like to hit for another card?\nplease enter y/n\n"
    userInput = gets.chomp
    if userInput == "y"
      print "\nAdding card to Player Hand...\n\n"
      sleep(2)

      playerHand.addCardToHand()
      if playerHand.getHandSum() > 21
        print "Bust! your hand is over 21\n"
        break
      elsif playerHand.getHandSum() == 21
        print "You hit 21!! Automatically Standing!\n\n"
        print aiHand.getCardstoString

        break
      end
    elsif userInput == "n"
      print "Player is standing at #{playerHand.getHandSum()}!\n\nThe Ai's Cards are: \n"
      print aiHand.getCardstoString
      break
    end
  end

  while aiHand.getHandSum() < 17 && !playerHand.checkBust() 
        print "\nAdding card to AI Hand...\n\n"
        sleep(2)
        aiHand.addCardToHand()

        if aiHand.getHandSum > 21
          print "Bust! AI has busted! You win!\n"
        end
  end

  if playerHand.checkBust()
    print "\nWould you like to play again?\ny/n?\n"
    restartChoice = gets.chomp
    if restartChoice == "n"
      break
    else
      next
    end
  end

  print "\nAI stands at or above 17. AI's Sum: #{aiHand.getHandSum()}\n\n"
  if playerHand.getHandSum > aiHand.getHandSum
    print "You have won with a hand of #{playerHand.getHandSum()}!\n The Ai had a hand of #{aiHand.getHandSum()}\n"
  elsif playerHand.getHandSum == aiHand.getHandSum
    print "You and the AI have pushed! You both had a hand of #{playerHand.getHandSum}\n"
  else
    print "You have lost with a hand of #{playerHand.getHandSum()}!\nThe Ai had a hand of #{aiHand.getHandSum()}\n"
  end
    
  print "\nWould you like to play again?\ny/n?\n"
  restartChoice = gets.chomp
  if restartChoice == "n"
    break
  end
end
