def print_puzzle(word,guessed = [])
  puzzle = []
  word.length.times {puzzle << "_"}
  word.split("").each_with_index do |letter,index|
    if guessed.include?(letter)
      puzzle[index] = letter
    end
  end
  puts puzzle.join(" ")
end


print_puzzle("triangle", ["t","s","g"])
