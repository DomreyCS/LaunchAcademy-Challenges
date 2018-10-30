# Example boards
board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

def print_grid(board)
  grid = []
  board.each_with_index do |row,index|
    grid[index] = " #{row[0]} | #{row[1]} | #{row[2]}"
  end
  puts grid.join("\n-----------\n")
end

print_grid(board_a)
