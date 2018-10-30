# Variables for dice, and reroll
d1 = 0
d2 = 0
reroll = ""
# Ask for sides
puts "How many sides does your dice have?"
sides = gets.chomp.to_i
# Ask for number of rolls 
puts "How many times would you like to roll your pair of dice?\n"
rolls = gets.chomp.to_i
# Loop until roll is 'n'
while reroll != 'n' do
  puts "\n"
  # Loop rolls acording to number of rolls
  rolls.times do
    # Assign new random values to dice
    d1 = rand(1..sides)
    d2 = rand(1..sides)
    # Print dice and total
    puts "You rolled a #{d1} and a #{d2}. Total: #{d1 + d2}"
  end
  # Ask to reroll
  print "\nRoll Again? (y/n) "
  reroll = gets.chomp
end
