player_choice = nil
wins = {
  player: 0,
  cpu: 0
}

until wins[:player] == 2 || wins[:cpu] == 2 do
  puts "Player Score: #{wins[:player]}, Computer Score: #{wins[:cpu]}"  
  until player_choice != nil do
    print "Choose rock (r), paper (p), or scissors (s): "
    player_choice = gets.chomp
    if player_choice === "r"
      puts "Player chose rock."
    elsif player_choice === "p"
      puts "Player chose paper."
    elsif player_choice === "s"
      puts "Player chose scissors"
    else
      puts "Invalid entry, try again."
      puts "\n"
      player_choice = nil
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
      puts "Paper beats rock, computer wins the round."
      wins[:cpu] += 1
    elsif computer_choice === 2
      puts "Rock beats scissors, player wins the round."
      wins[:player] += 1
    else
      puts "Tie! choose again."
    end
  elsif player_choice === "p"
    if computer_choice === 0
      puts "Paper beats rock, player wins the round."
      wins[:player] += 1
    elsif computer_choice === 2
      puts "Scissors beats paper, computer wins the round."
      wins[:cpu] += 1
    else
      puts "Tie! choose again."
    end
  elsif player_choice === "s"
    if computer_choice === 1
      puts "Scissors beats paper, player wins the round."
      wins[:player] += 1
    elsif computer_choice === 0
      puts "Rock beats scissors, computer wins the round."
      wins[:cpu] += 1
    else
      puts "Tie! choose again."
    end
  end

  # Reset player's choice to loop another round
  player_choice = nil
  puts "\n"
end

# Win results message
puts wins[:player] == 2 ? "Player wins!" : "Computer wins!" 
