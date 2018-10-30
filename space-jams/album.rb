class Album
  attr_reader :id, :title, :artists
  attr_accessor :tracks 

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    duration = @tracks.reduce(0) {|acc, track| acc += track.duration_ms.to_f}
    "%0.2f" % [duration / (1000 * 60) % 60]
  end

  def summary
    summary = ""
    summary << "Name: #{@title}\n"
    summary << "Artist(s): #{@artists}\n"
    summary << "Duration (min): #{duration_min}\n"
    summary << "Tracks:\n"
    @tracks.each {|track| summary << "- #{track.title}\n"}
    summary
  end
end