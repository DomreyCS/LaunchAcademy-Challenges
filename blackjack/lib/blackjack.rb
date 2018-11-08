require_relative "card"
require_relative "deck"
require_relative "hand"
require 'pry'

player = Hand.new
dealer = Hand.new
deck = Deck.new

puts "Welcome to Blackjack!"
puts

2.times do
  player.hand << deck.deal
  dealer.hand << deck.deal
end

player.hand.each do |card|
  puts "Player was dealt #{card.rank}#{card.suit}"
end

player_score = player.calculate_hand
puts "Player score: #{player_score}"
puts

puts "Dealer is showing #{dealer.hand[0].rank}#{dealer.hand[0].suit}"
puts

print "Hit or Stand (H/S): "
input = gets.chomp

until ["Hit","Stand","S","H"].any? {|valid| valid.casecmp(input) == 0}
  puts "Input is invalid"
  print "Hit or Stand (H/S): "
  input = gets.chomp
  puts
end
puts

until !["Hit","h"].any? {|valid| valid.casecmp(input) == 0}
  card = deck.deal
  puts "Player was dealt #{card.rank}#{card.suit}"
  player.hand << card
  player_score = player.calculate_hand
  puts "Player score: #{player_score}"
  if player_score > 21
    puts "Bust! You Lose..."
  elsif player_score < 21
    print "Hit or Stand (H/S): "
    input = gets.chomp

    until ["Hit","Stand","S","H"].any? {|valid| valid.casecmp(input) == 0}
      puts "Input is invalid"
      print "Hit or Stand (H/S): "
      input = gets.chomp
    end
    puts
  end
end

puts "Player score: #{player_score}"
puts

dealer_score = dealer.calculate_hand
dealer.hand.each do |card|
  puts "Dealer was dealt #{card.rank}#{card.suit}"
end

until dealer_score >= 17
  card = deck.deal

  puts "Dealer was dealt #{card.rank}#{card.suit}"

  dealer.hand << card
  dealer_score = dealer.calculate_hand

  if dealer_score > 21
    puts "Dealer score: #{dealer_score}"
    puts "Dealer Bust!"
  elsif dealer_score >= 17
    puts "Dealer stands."
    puts "Dealer score: #{dealer_score}"
    puts

    if dealer_score == player_score
      puts "Push!"
    elsif dealer_score > player_score ? "You lose!" : "You win!"
    end
  end
end






