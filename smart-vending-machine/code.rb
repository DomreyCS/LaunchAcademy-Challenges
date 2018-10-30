# Ask the user what's the name of the vending machine item they would like.
puts "Hello, I'm the first and only Talking Vending Machine.\nWhat would you like today?"
# Accept the user answer and save it as a variable.
item = gets.chomp
# Ask the user how many of the vending machine item they would like.
puts "How many of those would you like?"
# Accept the user's answer (should be a number) and save it as a variable
how_many = gets.chomp
# Use the answer to start a .times loop, in which you print the word the user asked for, the number of times that they specified.
# if they say "tons", print the vending machine item 14 times.
if how_many.index('tons').nil?
  how_many.to_i.times do
    puts item
  end
else
  14.times do
    puts item
  end
end
puts "There you go! Come again!"