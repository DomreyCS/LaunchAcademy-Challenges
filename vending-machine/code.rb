items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"

puts "What item would you like?"
item = gets.chomp
index = items_we_have.index(item)

if index != nil
  puts "Item index:\n#{index}"
else
  puts "We don't have that item."
end
