crypt_of_civilization = [
  "Comptometer",
  "Box of phonographic records",
  "Plastice savings bank",
  "Set of scales",
  "Toast-O-Lator",
  "Sample of aluminum foil",
  "Donald Duck doll"
]

extra = [
  "Container of beer", 
  "Lionel model train set", 
  "Ingraham pocket watch"
]

# Append contents of extra into crypt_of_civilization.
extra.each { |item| crypt_of_civilization << item }

# How many items are in the array?
puts crypt_of_civilization.length

# What is the first item in the array?
puts crypt_of_civilization[0]

# What is the last item in the array?
puts crypt_of_civilization.last

# What is the second item in the array?
puts crypt_of_civilization[1]

# What is the third item in the array?
puts crypt_of_civilization[2]

# What is the second from last item in the array?
puts crypt_of_civilization[crypt_of_civilization.length - 2]

# What is the index of "Toast-O-Lator"?
puts crypt_of_civilization.index("Toast-O-Lator")

# Sort by word length
print crypt_of_civilization.sort_by { |word| word.length }
puts "\n\n"

# Sort in alphabetical order
print crypt_of_civilization.sort
puts "\n\n"

# Sort in reverse alphabetical order
print crypt_of_civilization.sort { |first, second| second <=> first }
puts "\n\n"

# Print using 'while' loop
index = 0
while index != crypt_of_civilization.length do 
  puts crypt_of_civilization[index]
  index += 1
end
puts "\n"

# Print using 'each' loop
crypt_of_civilization.each { |item| puts item }
puts "\n"

puts crypt_of_civilization
puts "\n"

# Delete the first item
crypt_of_civilization.shift
print crypt_of_civilization
puts "\n"

# Delete the last item
crypt_of_civilization.pop 
print crypt_of_civilization
puts "\n"

# Delete "set of scales"
crypt_of_civilization.delete("Set of scales")
print crypt_of_civilization
puts "\n"

# Delete "sample of aluminum foil"
crypt_of_civilization.delete("Sample of aluminum foil")
print  crypt_of_civilization