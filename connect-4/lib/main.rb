require "pry"
require_relative "game"
require_relative "board"
require_relative "player"

game = Game.new
replay = true

print "Player 1 please enter name: "
p1 = gets.chomp.upcase

until game.valid_name?(p1) == true do
  binding.pry
  print "Invalid input, please enter a name: "
  p1 = gets.chomp.upcase
end

game.add_player(p1)
puts "#{game.players[0]} has joined"

print "Player 2 please enter name: "
p2 = gets.chomp.upcase

until game.valid_name?(p2) == true do
  print "Invalid input, please enter a name: "
  p2 = gets.chomp.upcase
end

game.add_player(p2)
puts "#{game.players[1]} has joined"

puts "Welcome to CONNECT 4!\n#{game.players[0]} VS #{game.players[1]}"

until replay == false do
  board = Board.new
  
  until board.win? || board.stalemate? do
    binding.pry
    game.players.each do |player|
      # player chooses a column
      column = ""
      turn_end = false
      until turn_end == true  
        puts "#{player} choose a column\n#{board.print}"
        column = gets.chomp.upcase
        if board.valid?(column)
          board.add_peice(player[0], column)
          turn_end = true
        else
          puts "Column is not available"
        end
      end
    # if not valid do not drop peice, they must select a valid column
# did the player win?
  # if not, next players turn
# player 2 chooses
    end
  end
end

puts "Thanks for playing!"

