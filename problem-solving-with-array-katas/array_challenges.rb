require 'prime'
## Working with Text
# Given a sentence, find the longest word.
puts "Find the longest word."
long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"
puts long_string.split.sort_by { |w| w.length }.last
# Given a sentence, find the most common letter used.
puts "Find the most common letter used."
# Create array for charactrer occurances
char_count = []
26.times do 
  char_count << 0
end
# split long string into words
letters_array = long_string.split(' ').each do |word|
  # each word is then split into letters
  word.split('').each do |char|
    # if letter is valid incrememnt the index position in char_count
    if char.ord >= "a".ord && char.ord <= "z".ord
      char_count[char.ord - "a".ord] += 1
    end
  end
end

max = -1
max_index = -1
# iterate through char_count
char_count.each_with_index do |count, index|
  # find highest occurance
  if count > max
    max = count
    max_index = index
  end
end
# get index and convert to char
puts (max_index + "a".ord).chr

# Decoder Ring
# 1 - 26 represents the correlating letter in the alphabet
# 27 represents a space
secret_message = "7 15 15 4 27 4 15 7"
decoded_message = ""

# split numbers
chars_to_decode = secret_message.split(" ")
# convert to letters
chars_to_decode.each do |char|
  # handle 27 as spaces
  if char.to_i == 27
    decoded_message << " "
  else
    # append to new string
    decoded_message << ((char.to_i - 1) + "a".ord).chr
  end
end
puts "Decode the following message with Ruby: \"7 15 15 4 27 4 15 7\""
puts "DECODED: \"#{decoded_message}\""

random_numbers = []
10.times do
  random_numbers << rand(9) + 1
end
puts "Random numbers: #{random_numbers.inspect}"
new_array = random_numbers.select { |number| Prime.prime?(number) }
puts "Only primes: #{new_array.inspect}"