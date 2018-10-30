require 'time'
class Movie
  attr_reader(:title, :genre, :start_time)

  def initialize(title, genre, start_time)
    @title = title
    @genre = genre
    @start_time = Time.parse(start_time).strftime("%-l:%M%p")
  end

  def showing_after?(arrival)
    arrival = Time.parse(arrival) <=> start_time
    arrival == -1 ? true : false
  end

  def showing_between?(range_start, range_end)
    Time.parse(start_time) >= Time.parse(range_start) && Time.parse(start_time) <= Time.parse(range_end) ? true : false
  end

  def comedy?
    @genre == "Comedy" ? true : false
  end
end

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
  .map { |movie| movie.split(", ") }
  .each { |movie| movies << Movie.new(movie[0], movie[1], movie[2]) }

