# Array of store items available
available_items = [
"old paperback book",
"potato",
"red onion",
"dried lemon",
"frankincense",
"medicinal herbs",
"saffron",
"glass spice jar",
"red fabric",
"orange fabric",
"handicrafts",
"small Persian rug",
"medium Persian rug",
"large Persian rug",
"extra large Persian rug"
]
# Create shopping cart
cart_items = []
unavailable = []
# Greet message, request and assign name to variable
puts "Hi there welcome to Souq, what's your name?"
name = gets.chomp
puts "Hello #{name}, type name of 'ITEM' to add or 'FINISHED' to checkout:"
# Loop ask for item until "FINISHED"
requested_item = ""
while requested_item != "FINISHED" do
  # Request name of item to add to shopping cart
  requested_item = gets.chomp
  # if available add to shopping cart
  if available_items.index(requested_item) != nil
    puts "Added #{requested_item}\nType an 'ITEM' or 'FINISHED'"
    cart_items << requested_item
  elsif requested_item == "FINISHED"
    break
  else
    puts "Sorry that item hasn't been added\nType an 'ITEM' or 'FINISHED'"
    unavailable << requested_item
  end
end
# Thank you's
puts "\n#{name}, thanks for trying our online Souq platform!\nHere is a list of the items in your cart:\n\n"
# Loop shopping cart
cart_items.each do |cart_item|
  # Print items
  puts "* #{cart_item}"
end
puts "\nBtw, we noticed you tried entering in some items that aren't part of the online Souq.\nWe don't have the following items yet but will let you know if they show up!:\n\n"
unavailable.each do |item|
  puts "* #{item}"
end

