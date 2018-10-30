puts "How far away are you?"
distance = gets.chomp

clubs = {
  "200" => "driver",
  "180" => "four wood",
  "170" => "two iron",
  "160" => "three iron",
  "150" => "four iron",
  "140" => "five iron",
  "130" => "six iron",
  "120" => "seven iron",
  "110" => "eight iron",
  "95" => "nine iron",
  "80" => "pitching wedge",
  "20" => "sand wedge",
  "0" => "putter"
}

best_club = clubs.keys.select { |club| club.to_i <= distance.to_i }[0]
puts "Use the #{clubs[best_club]}!"