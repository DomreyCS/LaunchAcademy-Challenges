require "pry"

require_relative "../lib/team.rb"
class Leaderboard
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
attr_reader :teams

  def initialize
    @teams = []
  end

  def get_teams
    GAME_INFO.each do |game|
      if !@teams.any? { |team| team.name == game[:home_team] }
        @teams << Team.new(game[:home_team])
      end
      if !@teams.any? { |team| team.name == game[:away_team] }
        @teams << Team.new(game[:away_team])
      end
    end
  end

  def show_stats(team)
    stats = @teams.select {|franchise| franchise.name == team}[0]

    report = "Team: #{stats.name}\n"
    report += "Rank: #{stats.rank}\n"
    report += "Wins: #{stats.wins}\n"
    report += "Losses: #{stats.losses}"
  end

  def update_stats
    GAME_INFO.each do |game|
      home = @teams.select{|team| team.name == game[:home_team]}[0]
      away = @teams.select{|team| team.name == game[:away_team]}[0]

      if game[:home_score] > game[:away_score]
        home.wins += 1
        home.games << {
          visiting: false,
          win: true,
          score: "#{game[:home_score]} to #{game[:away_score]}",
          opp: away.name
        }
        away.losses += 1
        away.games << {
          visiting: true,
          win: false,
          score: "#{game[:away_score]} to #{game[:home_score]}",
          opp: home.name
        }
      else
        away.wins += 1
        away.games << {
          visiting: true,
          win: true,
          score: "#{game[:away_score]} to #{game[:home_score]}",
          opp: home.name
        }
        home.losses += 1
        home.games << {
          visiting: false,
          win: false,
          score: "#{game[:home_score]} to #{game[:away_score]}",
          opp: away.name
        }
      end
    end
  end

  def rank_teams
    @teams.sort_by! { |team| [-team.wins, team.losses ]}
    @teams.each_with_index { |team, i| team.rank = i + 1 }
  end

  def display
    board = "--------------------------------------------------\n" 
    board += "| Name      Rank      Total Wins    Total Losses |\n"
    @teams.each do |team|
      board += "| #{team.name.ljust(8)}  #{team.rank}         #{team.wins}             #{team.losses}            |\n"
    end
    board += "--------------------------------------------------"
  end

  def team_game_summary(team)
    summary = "#{team.name} played #{team.games.count} games.\n"
    team.games.each do |game|
      visiting = game[:visiting] ? "away" : "home"
      outcome = game[:win] ? "won" : "loss"
      summary += "They played as the #{visiting} team against the #{game[:opp]} and #{outcome}: #{game[:score]}.\n"
    end
    summary
  end

  def updated(getteam = nil, upteam = nil, rank = nil)
    if getteam
      get_teams
    end
    if upteam
      update_stats
    end
    if rank
      rank_teams
    end
  end
end

