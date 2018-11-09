require_relative "card"
require_relative "deck"
require_relative "hand"

# currently does not have advance Blackjack game features including
# 'Blackjack' (face + ace) scenarios, splitting doubles, and money 
# transaction features e.g. (betting, buying insurance)

player = Hand.new
dealer = Hand.new
deck = Deck.new

# helper methods
def validate_input
  puts
  print "Hit or Stand (H/S): "
  input = gets.chomp
  puts
  until input == "Hit" || input == "Stand"
    if ["Hit","H"].any? {|valid| valid.casecmp(input) == 0}
      input = "Hit"
    elsif ["Stand","S"].any? {|valid| valid.casecmp(input) == 0}
      input = "Stand"
    else 
      puts
      puts "Invalid input!"
      print "Hit or Stand (H/S): "
      input = gets.chomp
      puts
    end
  end
  input
end

def score(p1_score, cpu_score = false)
  if cpu_score
    if cpu_score > 21
      puts
      abort("Dealer bust! You win!")
    elsif cpu_score == p1_score
      puts
      abort("Dealer push!")
    else
      puts
      puts "Dealer stands."
      puts
      puts cpu_score > p1_score ? abort("You lose!") : abort("You win!")
    end
  end

  if p1_score > 21
    puts
    abort("Bust! You lose...")
  end
end

puts "Welcome to Blackjack!"
puts

2.times do
  player.hand << deck.deal
  dealer.hand << deck.deal
end

player.hand.each do |card|
  puts "Player was dealt #{card.rank}#{card.suit}"
end
puts "Player score: #{player.get_score}"
score(player.get_score)

input = validate_input

until input == "Stand"
  card = deck.deal
  puts "Player was dealt #{card.rank}#{card.suit}"
  player.hand << card
  puts "Player score: #{player.get_score}"
  score(player.get_score)
  input = validate_input
end

puts "Player score: #{player.get_score}"
puts

if dealer.get_score < 17
  until dealer.get_score >= 17
    card = deck.deal
    dealer.hand.each do |card|
      puts "Dealer was dealt #{card.rank}#{card.suit}"
    end
    dealer.hand << card
    puts "Dealer score: #{dealer.get_score}"
  end
else
  dealer.hand.each do |card|
    puts "Dealer was dealt #{card.rank}#{card.suit}"
  end
  puts "Dealer score: #{dealer.get_score}"
end

score(player.get_score, dealer.get_score)


