# Part 1: $100 in Sales
number = 0.to_f
puts "Enter your values here!"
while number < 100 do
  number += gets.chomp.to_f
end
puts "You've reached 100!"
# Part 2: Using the times Operation
if number >= 125 
  number = (number - 100) / 25
  number.round.times do
    puts "You've earned another 25!"
  end
end