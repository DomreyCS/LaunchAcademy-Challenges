transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions. Be sure to make sure that your output and format matches what is given on the assignment page:  

# * What is the value of the first transaction?
puts "The first transaction is: #{transactions.first}"

# * What is the value of the second transaction?
puts "The second transaction is: #{transactions[1]}"

# * What is the value of the fourth transaction?
puts "The fourth transaction is: #{transactions[3]}"

# * What is the value of the last transaction?
puts "The last transaction is: #{transactions.last}"

# * What is the value of the second from last transaction?
puts "The second from the last transaction is: #{transactions[-2]}"

# * What is the value of the 5th from last transaction?
puts "The fifth from the last transaction is: #{transactions[-5]}"

# * What is the value of the transaction with index 5?
puts "The transaction with the index of 5 is: #{transactions[5]}"

# * How many transactions are there in total?
puts "The total number of transactions is: #{transactions.length}"

# * How many positive transactions are there in total?
puts "The total number of positive transactions is: #{transactions.select { |transaction| transaction > 0 }.length}"

# * How many negative transactions are there in total?
puts "The total number of negative transactions is: #{transactions.select { |transaction| transaction < 0 }.length}"

# * What is the largest withdrawal?
puts "The largest withdrawal is: #{transactions.min}"

# * What is the largest deposit?
puts "The largest deposit is: #{transactions.max}"

# * What is the small withdrawal?
puts "The smallest withdrawal is: #{transactions.min}"

# * What is the smallest deposit?
puts "The smallest deposit is: #{transactions.select { |transaction| transaction > 0 }.min}"

# * What is the total value of all the transactions?
puts "The total value of all the transactions is: #{transactions.reduce(:+)}"

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his all of the transactions in our transactions array have been run?
puts "Dr. Dre's balance is: $#{239_900 + transactions.reduce(:+)}"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "Total records: #{best_records.length}"

# * Who are all the artists listed?
puts "All of the artists:"
puts best_records.keys

# * What are all the album names in the hash?
puts "All of the albums:"
puts best_records.values

# * Delete the `Eminem` key-value pair from the list and print an updated list of just the artists.
puts "List of artists with Eminem deleted:"
best_records.delete("Eminem")
puts best_records.keys

# * Add your favorite musician and their best album to the list and print an updated list of all the artists and albums:
puts "My favorite musician added:"
best_records["Queen"] = "Somebody to Love"
best_records.each { |key, value| puts " #{key}: #{value}"}

# * True or False: `Nirvana` is included in `best_records`
puts "True or False: `Nirvana` is included:"
puts best_records.include?('Nirvana')

# * Change `Nirvana`'s album to another and then print the updated list of Artists and Albums.
puts "Nirvana's album updated:"
best_records['Nirvana'] = "Teenage Wasteland"
best_records.each { |key, value| puts " #{key}: #{value}"}

# * True or False: `Soundgarden` is included in `best_records`?
puts "True or False: `Soundgarden` is included:"
puts best_records.include?('Soundgarden')

# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band and then print the updated list of Artists and Albums.
puts "Soundgarden added if it's not already there:"
best_records['Soundgarden'] = "Soundgarden"
best_records.each { |key, value| puts " #{key}: #{value}"}

# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
puts "key-value pairs have a key that has a length less than or equal to 6 characters:"
puts best_records.select { |key, value| key.length <= 6 }.keys
# * Which key-value pairs have a value that is greater than 10 characters?
puts "key-value pairs have a key that has a length greater than 10 characters:"
puts best_records.select { |key, value| key.length >= 10 }.keys