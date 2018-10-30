names = [
  "John",
  "Hannah",
  "Mark",
  "Sam",
  "Anna",
  "Sandra",
  "Susan",
  "Julie",
  "Yanni",
  "Eve",
  "Sunny",
  "Matt"
]

## Accessing elements within our `names` array:

# 1. Retrieve the first name from the `names` array.
puts "The first name in the array is #{names[0]}"
# 2. Retrieve the second name from the `names` array.
puts "The second name in the array is #{names[1]}"
# 3. Retrieve the third name from the `names` array.
puts "The third name in the array is #{names[2]}"
# 4. Retrieve the last name from the `names` array.
puts "The last name in the array is #{names[-1]}"
# 5. Retrieve the second-to-last name from the `names` array.
puts "The second-to-last name in the array is #{names[-2]}"
# 6. Create a new array with the first two elements in the `names` array.
new_array = names.slice(0, 2)
puts "A new array with the first two elements in the `names` array:\n#{new_array}"
# 7. Create a new array with the first four elements in the `names` array.
new_array = names.slice(0, 4)
puts "A new array with the first four elements in the `names` array:\n#{new_array}"


## Manipulating the `names` array:

# 1. Add your name to the `names` array.
names << "Dara"
puts "Add your name to the `names` array.\n#{names}"
# 2. Replace the first element in the array with your best friend's name.
names[0] = "Alfred"
puts "Replace the first element in the array with your best friend's name.\n#{names}"
# 3. Reassign the last element in the array with the name of your arch-nemesis.
names[-1] = "Joker"
puts "Reassign the last element in the array with the name of your arch-nemesis.\n#{names}"

## Asking questions about our `names` array:

# 1. How many names are on the list?
puts "How many names are on the list?"
puts "#{names.length}"
# 2. Who is the third name on the list?
puts "Who is the third name on the list?"
puts "#{names[2]}"
# 3. Output each name and where it occurs in the array.
puts "Output each name and where it occurs in the array."
names.each_with_index { |name, index| puts "names[#{index}] => '#{name}'" }
# 4. Sort the names in alphabetical order.
puts "Sort the names in alphabetical order."
puts names.sort
# 5. Sort the names by smallest number of characters to largest.
puts "Sort the names by smallest number of characters to largest."
puts names.sort_by { |name| name.length }
# 6. Supply the sum of all the characters in the list of names.
puts "Supply the sum of all the characters in the list of names."
puts "#{names.inject(0) { |sum, name| sum += name.length }} characters total"
# 7. Do any of the names start with "y"?
puts "Do any of the names start with \"y\"?"
puts (names.any? { |name| name.include?("y")}) ? "Yes" : "No"
# 8. Are all of the names 3 characters long or larger?
puts "Are all of the names 3 characters long or larger?"
puts (names.all? { |name| name.length > 3 }) ? "Yes" : "No"
# 9. Using the `names` array, create a new array containing only palindrome names.
puts "Using the `names` array, create a new array containing only palindrome names."
new_array = names.select { |name| name.downcase == name.downcase.reverse }
puts "#{new_array}"
# 10. Find the first name that starts with "S".
puts "Find the first name that starts with \"S\"."
puts "#{names.select { |name| name.include?("S") }[0]}"
# 11. Create a new array containing names that start with "S".
puts "Create a new array containing names that start with \"S\"."
new_array = names.select { |name| name.include?("S") }
puts "#{new_array}"
# 12. Create a new array of names ending with a vowel.
puts "Create a new array of names ending with a vowel."
vowels = ["a", "e", "i", "o", "u"]
new_array = names.select { |name| vowels.any? { |vowel| vowel == name[-1]} }
puts "#{new_array}"
# 13. Divide the names into groups of 3.
puts "Divide the names into groups of 3."
puts "#{names.each_slice(3).to_a}"

