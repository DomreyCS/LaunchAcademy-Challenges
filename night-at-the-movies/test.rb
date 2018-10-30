movies = []

"The Princess Bride, Comedy, 7:00PM
Troll 2, Horror, 7:30PM
Pet Cemetery, Horror, 8:15PM
Flight of the Navigator, Adventure, 8:17PM
Teen Witch, Comedy, 8:20PM
The Goonies, Comedy, 8:30PM
Better Off Dead, Comedy, 8:45PM
Weekend at Bernies, Comedy, 9:00PM
The Wizard, Adventure, 9:10PM"
  .split("\n")
  .map! { |movie| movie.split(", ") }
  .each { |movie| movies << Movie.new(movie[0], movie[1], movie[2]) }

puts movies[0]