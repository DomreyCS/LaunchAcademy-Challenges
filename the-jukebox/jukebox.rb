class Jukebox
  AVAILABLE_SONGS = [
    {"Lionel Ritchie" => "Hello"},
    {"The Beach Boys" => "Kokomo"},
    {"Milli Vanilli" => "Girl You Know It’s True"},
    {"Black Lace" => "Agadoo"},
    {"Men at Work" => "Down Under"},
    {"Starship" => "Nothing's Gonna Stop Us Now"},
    {"Billy Ocean" => "Get Outta My Dreams, Get Into My Car"},
    {"Stevie Wonder" => "I Just Called To Say I Love You"},
    {"New Kids on the Block" => "Hangin' Tough"},
    {"Starship" => "We Built This City"},
    {"Wham!" => "Wake Me Up Before You Go Go"},
    {"Billy Joel" => "We Didn't Start The Fire"},
    {"Whitney Houston" => "I Wanna Dance With Somebody"},
    {"MC Hammer" => "U Can't Touch This"}
  ]

  def initialize(requested_songs = AVAILABLE_SONGS.shuffle!)
    @playlist = []
    requested_songs.each do |song|
      if AVAILABLE_SONGS.include?(song)
        @playlist << song
      end
    end
  end

  def shuffle_songs!
    @requested_songs.shuffle!
  end

  def play!
    @requested_songs.shift
  end

  def add_track(track)
    AVAILABLE_SONGS.any? {|song| song.has_value?(track)} ? @playlist << AVAILABLE_SONGS.select {|song| song.has_value?(track)}[0] : false
  end
end