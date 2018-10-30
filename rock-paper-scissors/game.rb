# The user chooses their shape by typing "r" (rock), "p" (paper), or "s" (scissors).
player_choice = nil

loop do 
  print "Choose rock (r), paper (p), or scissors (s): " 
  player_choice = gets.chomp
  if player_choice === "r"
    puts "Player chose rock."
    break
  elsif player_choice === "p"
    puts "Player chose paper."
    break
  elsif player_choice === "s"
    puts "Player chose scissors"
    break
  else
    puts "\(#{player_choice}\) is NOT a valid choice!\nTry again, but this time..."
  end
end 


# Random number generates a computer choice
computer_choice = rand(3)
if computer_choice === 0
  puts "Computer chose rock."
elsif computer_choice === 1
  puts "Computer chose paper."
elsif computer_choice === 2
  puts "Computer chose scissors."
end

# Game logic
if player_choice === "r"
  if computer_choice === 1
    puts "Paper beats rock, Computer wins!"
  elsif computer_choice === 2
    puts "Rock beats scissors, You win!"
  else
    puts "Tie!"
  end
elsif player_choice === "p"
  if computer_choice === 0
    puts "Paper beats rock, You win!"
  elsif computer_choice === 2
    puts "Scissors beats paper, Computer wins!"
  else
    puts "Tie!"
  end
elsif player_choice === "s"
  if computer_choice === 1
    puts "Scissors beats paper, You win!"
  elsif computer_choice === 0
    puts "Rock beats scissors, Computer wins!"
  else
    puts "Tie!"
  end
end