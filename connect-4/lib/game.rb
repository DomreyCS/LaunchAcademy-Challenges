class Game
  attr_reader :players
  def initialize(players = [])
    @players = players.map {|player| player = player.upcase}
  end

  def valid_name?(name)
    if @players.any? { |player| player == name }
      false
    else
      true
    end
  end

  def replay?(replay)
    if ["y", "yes", "n", "no"].any? {|choice| choice.casecmp(replay) == 0}
      true
    else
      false
    end
  end

  def add_player(name)
    @players << name
  end
end