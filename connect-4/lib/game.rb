class Game
  attr_reader :players
  def initialize(players = [])
    @players = players.map {|player| player = player.upcase}
  end

  def valid_name?(name)
    @players.any? {|player| player != name.upcase}
  end

  def add_player(name)
    @players << name.upcase
  end
end