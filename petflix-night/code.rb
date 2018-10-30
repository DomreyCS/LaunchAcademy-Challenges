dramas = [
  "Stanger Llamas",
  "Game of Bones",
  "Llama Actually",
  "Grey's Catanomy",
  "Breaking Baaaaahhhd"
]

animations = [
  "Bojack Man",
  "Family Dog",
  "Futurellama",
  "Barkcher",
  "American Dog",
  "Pokemon",
  "Bob's Barkers"
]

comedies = [
  "Barks and Recreation",
  "30 Cats",
  "Bones",
  "Girl meets Cat",
  "Gilmore Cats",
  "New Dog",
  "Catlandia",
  "Full Mouse"
]

all_shows = [
  "Stanger Llamas",
  "Game of Bones",
  "Llama Actually",
  "Grey's Catanomy",
  "Breaking Baaaaahhhd",
  "Bojack Man",
  "Family Dog",
  "Futurellama",
  "Barkcher",
  "American Dog",
  "Pokemon",
  "Bob's Barkers",
  "Barks and Recreation",
  "30 Cats",
  "Bones",
  "Girl meets Cat",
  "Gilmore Cats",
  "New Dog",
  "Catlandia",
  "Full Mouse"
]

# Return every show in the dramas array that has the word "Llama" in it.
print dramas.select { |show| show.include?('Llama') }
puts "\n"
# Return every show in our animations array that has the word "Dog" in it.
print animations.select { |show| show.include?("Dog") }
puts "\n"
# Return every show in our comedies array that does NOT have the word "Cat" in it.
print comedies.reject { |show| show.include?('Cat') }
puts "\n"
# Return an array of every show's first letter in our all_shows array.
print all_shows.map { |show| show[0] }