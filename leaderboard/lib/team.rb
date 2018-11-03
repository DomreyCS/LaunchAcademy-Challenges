class Team
  attr_reader :name
  attr_accessor :rank, :wins, :losses, :games

  def initialize(name)
    @name = name
    @rank = nil
    @wins = 0
    @losses = 0
    @games = [] 
  end
end
