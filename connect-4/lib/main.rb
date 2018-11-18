# Game
  # #finished?
  # #replay?
    #current_player

# Board
  # valid?(column)
  # drop_peice(player, column)
  # win?
  # full?
# Players
  # #name
  # #valid_name? consider alternative constructor

# while game is not finished or player has 4 in a row

 # get player's name
  # puts "Player 1 what is your name?"
  # player_1 = Player.valid_name?(gets.chomp) :  
    # game cannot start until both names are valid
    # names must be unique

loop do
  # game = Game.new
  # player 1 chooses a column
    # is spot valid?
      # if valid
        # drop peice into first available row in the selected column
      # if not valid do not drop peice, they must select a valid column
  # did the player win?
    # if not, next players turn
  # player 2 chooses

  break if !board.win? || !board.stalemate?
end
