require "pry"
require_relative "game"
require_relative "board"
require_relative "player"

game = Game.new
replay_game = true

print "Player 1 please enter name: "
p1 = gets.chomp.upcase

until game.valid_name?(p1) == true do
  binding.pry
  print "Invalid input, please enter a name: "
  p1 = gets.chomp.upcase
end

game.add_player(p1)
puts "#{game.players[0]} has joined"
puts

print "Player 2 please enter name: "
p2 = gets.chomp.upcase

until game.valid_name?(p2) == true do
  print "Invalid input, please enter a name: "
  p2 = gets.chomp.upcase
end

game.add_player(p2)
puts "#{game.players[1]} has joined"
puts

puts "Welcome to CONNECT 4!"
puts

until !replay_game do
  board = Board.new
  game_end = false

  until game_end
    game.players.each do |player|
      # player chooses a column
      column = ""
      turn_end = false
      until turn_end
        puts "#{player} choose a column"
        puts "#{board.print}"

        column = gets.chomp.upcase
        puts

        if board.valid?(column)
          board.add_peice(player[0], column)
          if board.win?
            puts "#{player} wins!"
            puts
            game_end = true
          elsif board.stalemate?
            puts "Draw game!"
            puts
            game_end = true
          end
          turn_end = true
        else
          puts "Column is not available"
        end
      end
      game_end ? break : next
    end
  end
  print "Play again? (yes/no) "
  replay_game = game.replay?(gets.chomp)
  puts
end

puts "Thanks for playing!"

