puts "How wide (feet) is the area?"
width = (gets.chomp).to_i

puts "How long (feet) is the area?"
length = (gets.chomp).to_i

puts "How tall (inches) snow?"
inches = (gets.chomp.to_f * 0.0833333).round

# calculate cubic feet
cubic_feet = (length * width * inches)

if cubic_feet <= 49
  puts "Cubic Feet: #{cubic_feet}\nQuote Price: $20"
elsif cubic_feet >= 50 && cubic_feet <= 149 
  puts "Cubic Feet: #{cubic_feet}\nQuote Price: $50"
elsif cubic_feet >= 150 && cubic_feet <= 299
  puts "Cubic Feet: #{cubic_feet}\nQuote Price: $100"
else
  puts "Cubic Feet: #{cubic_feet}\nQuote Price: $300"
end