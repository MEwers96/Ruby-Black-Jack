#!/usr/bin/env ruby
load "Card.rb"
load "Hand.rb"

aiHand = Hand.new("Ai")
playerHand = Hand.new("Player")


print playerHand.getCardstoString()

while playerHand.getHandSum() < 21
  print "Would you like to hit for another card?\nplease enter y/n\n"
  userInput = gets.chomp
  if userInput == "y"
    print "Adding card to Player Hand...\n"
    sleep(2)

    playerHand.addCardToHand()
    if playerHand.getHandSum() > 21
      print "Bust! your hand is over 21\n"
    elsif playerHand.getHandSum() == 21
      print "You hit 21!! Automatically Standing!\n\n"

    end
  elsif userInput == "n"
    print "Player is standing at #{playerHand.getHandSum()}!\n\nThe Ai's Cards are: \n"
    print aiHand.getCardstoString
    break
  end
end

while aiHand.getHandSum() < 17
      print "Adding card to AI Hand...\n"
      sleep(2)
      aiHand.addCardToHand()

      if aiHand.getHandSum >= 21
        print "Bust! AI has busted! You win!"
      end
    end
print "AI stands at or above 17. AI's Sum: #{aiHand.getHandSum()}\n\n"
if playerHand.getHandSum > aiHand.getHandSum
  print "You have won with a hand of #{playerHand.getHandSum()}!\nThe Ai had a hand of #{aiHand.getHandSum()}\n"
elsif playerHand.getHandSum == aiHand.getHandSum
  print "You and the AI have pushed! You both had a hand of #{playerHand.getHandSum}\n"
else
  print "You have lost with a hand of #{playerHand.getHandSum()}!\nThe Ai had a hand of #{aiHand.getHandSum()}\n"

end
