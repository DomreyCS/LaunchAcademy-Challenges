# Greet the user and take their name. Store this name.
print "Welcome to Time Capsule Maker. Please enter your name: "
name = gets.chomp
print "Nice to meet you #{name}!\n"
time_capsule = {}
time_capsule_item = ""
# Loop: Ask user what to add to time capsule
while time_capsule_item != "FINISHED"
  puts "Type an item to add to your time capsule or (FINISHED)"
  time_capsule_item = gets.chomp
  # Break if 'FINISHED'
  if time_capsule_item == "" || time_capsule_item === "FINISHED"
    break
  end
  # Get amount if not finished
  puts "amount?"
  amount_to_add = gets.chomp.to_i
  # Add item to time capsule if it doesn't exit yet, or incre by the amount
  if time_capsule.key?(time_capsule_item)
    time_capsule["#{time_capsule_item}"] += amount_to_add
  else
    time_capsule["#{time_capsule_item}"] = amount_to_add
  end
end
# Thank you's
puts "\n#{name}, thanks for trying our Time Capsule maker. Here is a list of the items in your Time Capsule!\n\n"
# Display out time-capsule items
time_capsule.each { |key, value| puts "* #{key} \(#{value}\)" }

