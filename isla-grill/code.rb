dinner_total = 178 #<-- Cost of bill
tip = 20 / 100.to_f #<-- Percent of the bill

puts "You should tip $#{dinner_total * tip}"
puts "The total bill is $#{(dinner_total * tip) + dinner_total}"