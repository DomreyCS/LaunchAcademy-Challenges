require_relative "../lib/team.rb"
class Leaderboard
  attr_accessor :records
  GAME_INFO = [
      {
        home_team: "Patriots",
        away_team: "Broncos",
        home_score: 17,
        away_score: 13
      },
      {
        home_team: "Broncos",
        away_team: "Colts",
        home_score: 24,
        away_score: 7
      },
      {
        home_team: "Patriots",
        away_team: "Colts",
        home_score: 21,
        away_score: 17
      },
      {
        home_team: "Broncos",
        away_team: "Steelers",
        home_score: 11,
        away_score: 27
      },
      {
        home_team: "Steelers",
        away_team: "Patriots",
        home_score: 24,
        away_score: 31
      }
  ]
  def initialize
    @records = []
    GAME_INFO.each do |game|
      if !@records.any? { |team| team.name == game[:home_team] }
        @records << Team.new(game[:home_team])
      elsif !@records.any? { |team| team.name == game[:away_team] }
        @records << Team.new(game[:away_team])
      end

      # set wins / losses
      if game[:home_score] > game[:away_score]
        @records
          .select {|team| team.name == game[:home_team]}
          .map! {|team| team.wins += 1}
        @records
        .select {|team| team.name == game[:away_team]}
        .map! {|team| team.losses += 1}
      else
        @records
          .select {|team| team.name == game[:away_team]}
          .map! {|team| team.wins += 1}
        @records
          .select {|team| team.name == game[:home_team]}
          .map! {|team| team.losses += 1}
      end

      # sort by ranking
      @records = @records
        .sort_by {|team| [-team.wins, -team.losses]}
        .each_with_index {|team, index| team.rank = index + 1}
        .sort_by {|team| team.rank}
    end
  end

  def display
    board = []
    board << "---------------------------------------------------"
    board << "| Name       Rank      Total Wins    Total Losses |"
    @records.each do |team|
      board << "| #{team.name.ljust(10)} #{team.rank.to_s.ljust(9)} #{team.wins.to_s.ljust(14)} #{team.losses.to_s.ljust(12)}|"
    end
    board << "---------------------------------------------------"
    board.join("\n")
  end
  
end
