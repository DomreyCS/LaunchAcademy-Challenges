# Array of train times
departures = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]
user_time = ''

# Ask user for departure time, input should be in decimal format, e.g. 12.5
puts "What time are you leaving?"
user_time = gets.chomp

# Handle any input that is not a number. Prompt the user to re-enter the data:
while user_time.match(/[A-Za-z]/) do
  puts "Sorry, I don't understand that time.\n\n"
  puts "What time are you leaving?"
  user_time = gets.chomp
end

# Compare user time to each departure time
departures.each_with_index do |departure, index|
  if user_time.to_f > 19  && user_time.to_f <= 24
    puts "You should catch Train 13 leaving at 24
    
***DON'T STOP...BELIEVIN'!***

Just a small town girl
Living in a lonely world
She took the midnight train going anywhere
Just a city boy
Born and raised in South Detroit
He took the midnight train going anywhere

A singer in a smoky room
A smell of wine and cheap perfume
For a smile they can share the night
It goes on and on and on and on

Strangers waiting, up and down the boulevard
Their shadows searching in the night
Streetlights people, living just to find emotion
Hiding, somewhere in the night."
    break
  elsif user_time.to_f <= departure
    puts "You should catch Train #{index + 1} leaving at #{departure}"
    break
  end
end