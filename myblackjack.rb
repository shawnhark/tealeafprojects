#blackjack

def calculate_total(cards) 
  #[['2', 'Hearts']]
  arr = cards.map{|e| e[0] }
  total = 0
  arr.each do |value|
    if value == "Ace"
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  #ace adjustment
   arr.select{|e| e == "Ace"}.count.times do
     total -= 10 if total > 21
  end

  total
end

puts
puts 'Welcome to a game of Blackjack'
puts
#create deck
deck = []
suits = [' of Hearts', ' of Diamonds', ' of Clubs', ' of Spades']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
deck = cards.product(suits)
deck.shuffle!

#deal cards
playerhand = []
dealerhand = []
playerhand << deck.pop
dealerhand << deck.pop
playerhand << deck.pop
dealerhand << deck.pop 

playertotal = calculate_total(playerhand)
dealertotal = calculate_total(dealerhand)

puts "Your cards are: " + playerhand.to_s + " for a total of: " + playertotal.to_s
puts "The dealer is showing " + dealerhand[0].to_s
puts


#hit or stay loop
hit_or_stay = 'hit'
while playertotal.to_i < 21 && hit_or_stay.downcase == 'hit'
puts 'What would you like to do? Hit or Stay?'
hit_or_stay = gets.chomp
  if hit_or_stay.downcase == 'hit'
    playerhand << deck.pop
    playertotal = calculate_total(playerhand)
    puts "Your cards are now: " + playerhand.to_s + ", for a total of: " + playertotal.to_s
  elsif hit_or_stay.downcase == 'stay'
    playertotal = calculate_total(playerhand)
    puts "Your cards are now: " + playerhand.to_s + ", for a total of: " + playertotal.to_s
  else puts 'Please type Hit or Stay'
  end
end

# bust
if playertotal.to_i > 21
  puts 'Sorry, you busted.'
end
puts
puts "The dealer cards are: " + dealerhand.to_s + ", for a total of: " + dealertotal.to_s
while dealertotal.to_i < 17 && playertotal.to_i < 22
  dealerhand << deck.pop
  dealertotal = calculate_total(dealerhand)
  puts "The dealer cards are now: " + dealerhand.to_s + " for a total of: " + dealertotal.to_s
end

#scoring results
puts "The dealer total is " + dealertotal.to_s + " and your total is " + playertotal.to_s
if (playertotal.to_i > dealertotal.to_i && playertotal.to_i < 22) || playertotal.to_i < 22 && dealertotal.to_i > 22
  puts 'Congratulations, you win!'
elsif playertotal.to_i == dealertotal.to_i
  puts 'This deal is a push.'
else puts 'Sorry, you lose.'
end


