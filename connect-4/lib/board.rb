class Board
  attr_reader :rows

  def initialize(rows = 6, cols = 7)
    @rows = []
    rows.times do
      @rows << []
    end
    @rows.each do |row|
      cols.times do
        row << " "
      end
    end
  end

  def print
  print_board = "|1 2 3 4 5 6 7|\n"
  @rows.each_with_index do |row, index|
    if index == @rows.size - 1
      print_board << "|#{row.join(' ')}|"
    else
      print_board << "|#{row.join(' ')}|\n"
    end
  end
  print_board
  end

  def valid?(column)
    @rows.any? {|row| row[column - 1] == ' '}
  end

  def add_peice(player, column)
    row_index = @rows.size - 1
    column_index = column - 1

    while row_index >= 0 do
      binding.pry
      if @rows[row_index][column_index] == ' '
        @rows[row_index][column_index] = player
        row_index = -1
      else
        row_index-=1
      end
    end
  end
end
