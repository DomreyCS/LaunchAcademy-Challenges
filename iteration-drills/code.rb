# Write Ruby<->English answers here as comments in your code

## Turning .each into English
# For every element called 'number' in the array 'numbers', print out the 'number' times three
# For every element called 'name' in the array 'names', print out the length of 'name'
# For every element called 'number' in the array 'numbers', print out the sum of 'sum' and 'number'
# For every element with a key of 'name' and value of 'age' called in 'hash', print out 'name' is 'age' years old.
# For every element with a key of 'transaction' and value of 'value' called in 'account', print out the sum of 'sum' and 'value', then print the sum
# For every element with a key of 'name' and value of 'address' called in 'addresses', print out 'name' lives on 'address'

## Turning English into .each
# sentences.each do |word|
  # puts word
# end

# numbers.each do |phone_number|
  # if area_code == 'MA'
  #   puts phone_number
  # end
# end

# numbers.each do |number|
  # if number.odd
  #   puts number
  # end
# end

# ages.each do |name, age|
  # puts "#{name} is #{age}"
# end

# ages.each do |name, age|
  # if age > 10
    # puts "#{name} is #{age}"
  # end
# end

# ages.each do |name, age|
  # if age.even``
    # puts "#{name} is #{age}"
  # end
# end

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
puts "Sum of all numbers is: #{array.reduce(:+)}"
# * How would you print out each value of the array?
puts "Print out each value of the array:"
puts array.each { |number| puts number }
# * What is the sum of all of the even numbers?
puts "Sum of all even numbers is #{array.select { |number| number.even? }.reduce(:+)}"
# * What is the sum of all of the odd numbers?
puts "Sum of all odd numbers is #{array.select { |number| number.odd? }.reduce(:+)}"
# * What is the sum of all the numbers divisble by 5?
puts "Sum of all numbers divisible by 5 is #{array.select { |number| number % 5 == 0 }.reduce(:+)}"
# * What is the sum of the squares of all the numbers in the array?
puts "Sum of all the squares is #{array.map { |number| number**2 }.reduce(:+)}"

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
puts "Print out each name backwards:"
array.each { |name| puts name.reverse}
# * What are the total number of characters in the names in `array`?
puts "Number of characters in each name:"
array.each { |name| puts "#{name} has #{name.length} characters"}
puts "Total number of characters from all names: #{array.reduce(0) { |sum,name| sum += name.length}}"
# * How many names in `array` are less than 5 characters long?
puts "Number of names in the 'array' with less than 5 characters: #{array.select { |name| name.length < 5}.length}"
# * How many names in `array` end in a vowel?
puts "Number of names in the 'array' that end in a vowel: #{array.select { |name| /([aeiou])/.match(name[-1]) }.length}"
# * How many names in `array` are more than 5 characters long?
puts "Number of names in the 'array' with more than 5 characters: #{array.select { |name| name.length > 5}.length}"
# * How many names in `array` are exactly 5 characters in length?
puts "Number of names in the 'array' with exactly 5 characters: #{array.select { |name| name.length == 5}.length}"
