# Ask a user what they would like to order.
puts "What would you like to order?"
order = gets.chomp
3.times do
  puts "What did you say?"
  order = gets.chomp
end
puts "Oh, okay!"
