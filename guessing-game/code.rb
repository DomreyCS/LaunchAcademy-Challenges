require "pry"
# Assign variable for score
score = 0
# Ask user for difficulty "easy" or "hard"
puts "Welcome to the Guessing Game! What difficulty would you like to play?
Type easy or hard:"
# Assign difficulty to variable
difficulty = gets.chomp
# If player chose easy
if difficulty === "easy"
  # Assign random number 1-10
  number = rand(1..10).to_s
  # Ask player to choose 1-10
  puts "I've picked a number between 1 and 10. Now guess it!"
# If player chose hard
else
  # Assign random number 1-20
  number = rand(1..20).to_s
  # Ask player to choose 1-20
  puts "I've picked a number between 1 and 20. Now guess it!"
end
# Add binding.pry to assest number value
binding.pry
# Assign the player's choice
guess = gets.chomp
# While the answer has not been found continue to loop
while guess != number do
  score += 1
  puts "Nope, try again!"
  guess = gets.chomp
end
# print congratulatory message
puts "You win!, Nice job!"
puts "Your score was: #{score}"