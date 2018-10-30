# Create variables for dice
d1 = 0
d2 = 0
reroll = ""
# Loop until reroll = "s"
while reroll != "s" do
  d1 = rand(1..6)
  d2 = rand(1..6)
  # Print dice rolls
  puts "You rolled a #{d1} and a #{d2}"
  # Print total
  puts "Total: #{d1 + d2}"
  # Ask to reroll ('Enter') or stop ('s')
  puts "Press 'Enter' to roll again, 's' to stop"
  reroll = gets.chomp
end
