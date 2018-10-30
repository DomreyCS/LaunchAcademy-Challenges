order = nil
total = 0.00
menu = {
  "Hamburger" => 4.00,
  "Hot Dog" => 3.00,
  "Fries" => 2.00,
  "Chips" => 1.00,
  "Water" => 1.25,
  "Soda" => 1.50
}

while order == nil
  puts "Welcome to Goodburger, home of the Goodburger! Can I take your order?"
  order = gets.chomp.split(",")

  order.each do |item|
    if menu[item].nil?
      puts "Sorry! We don't have '#{item}' on the menu."
      order = nil
    else
      total += menu[item]
    end
  end
end

puts "Thanks! Your total is $%0.2f. Have a nice day!" % [total]

