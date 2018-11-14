class Board
  attr_reader :board

  def initialize(rows = 6, cols = 7)
    @board = []
    rows.times do
      @board << []
    end
    @board.each do |row|
      cols.times do
        row << "O"
      end
    end
  end

  def print
  print_board = "|1 2 3 4 5 6 7|\n"
  @board.each_with_index do |row, index|
    if index == @board.size - 1
      print_board << "|#{row.join("|")}|"
    else
      print_board << "|#{row.join("|")}|\n"
    end
  end
  print_board
  end

  def add_turn(player, column)

  end
end
