class Board
  KEY = {
    A: 0,
    B: 1,
    C: 2,
    D: 3,
    E: 4,
    F: 5,
    G: 6
  }
  attr_accessor :rows

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
  print_board = "|A B C D E F G|\n"
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
    if KEY.include?(column.to_sym)
      index = KEY[column.to_sym]
      @rows.any? {|row| row[index] == ' '}
    else
      return false
    end
  end

  def add_peice(player, column)
    row_index = @rows.size - 1
    column_index = KEY[column.to_sym]

    while row_index >= 0 do
      if @rows[row_index][column_index] == ' '
        @rows[row_index][column_index] = player
        row_index = -1
      else
        row_index-=1
      end
    end
  end

  def win?
    previous_row = [nil,nil,nil,nil,nil,nil,nil] # assign first @rows' row
    connect_count = [0,0,0,0,0,0,0]

    # iterate through rows 
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |slot, slot_index|
        # if slot is not ' ' and character matches the same slot from previous row
        if slot != ' ' && slot == previous_row[slot_index]
          connect_count[slot_index] += 1 # increase connect count at the index of match
      # elsif slot is not ' ' and does'nt match the previous charcter
        elsif slot != ' ' && slot != previous_row[slot_index]
          connect_count[slot_index] = 0 # connect count at the index assigned to 0
        end
      end
      previous_row = @rows[row_index]
    end
    connect_count.any? {|connect| connect == 3}
  end

  def stalemate?
    !win? && !@rows.any? {|row| row.include?(" ")} ? true : false
  end
end
