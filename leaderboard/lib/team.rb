class Team
  attr_accessor :name, :rank, :wins, :losses

  def initialize(name)
    @name = name
    @rank = nil
    @wins = 0
    @losses = 0
  end
end
