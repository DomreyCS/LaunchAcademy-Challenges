require 'spec_helper'

RSpec.describe Leaderboard do
  let(:lb) { lb = Leaderboard.new }
  
  describe ".new" do
    it "should be initialized based on game data" do
      expect(lb).to be_a(Leaderboard)
      expect(lb.teams).to eq([])
    end
  end

  describe "#get_teams" do
    it "should create team objects by iterating through GAME_INFO to create team objects with only their names." do
      expect(lb.get_teams).to be_a(Array)
      expect(lb.teams[0].name).to eq("Patriots")
    end
  end

  describe "#teams" do
    it "should hold any number of team objects" do
      lb.get_teams
      expect(lb.teams.count).to be_within(31).of(32)
    end
  end

  describe "#show_stats" do
    it "should display stats of any team provided as an argument" do
      lb.get_teams
      expect(lb.show_stats("Patriots")).to include("Team: Patriots")
      expect(lb.show_stats("Patriots")).to include("Wins: 0")
      expect(lb.show_stats("Patriots")).to include("Losses: 0")
      expect(lb.show_stats("Patriots")).to include("Rank: ")
    end
  end
  
  describe "#update_stats" do
    it "should iterate through GAME_INFO again to set the number of wins and loses for each team" do
      lb.updated(1,1)
      expect(lb.show_stats("Steelers")).to include("Wins: 1")
      expect(lb.show_stats("Patriots")).to include("Wins: 3")
    end
  end

  describe "#rank_teams" do
    it "should sort teams by wins and set their ranks" do
      lb.updated(1,1,1)
      expect(lb.show_stats("Patriots")).to include("Rank: 1")
      expect(lb.show_stats("Steelers")).to include("Rank: 2")
      expect(lb.show_stats("Broncos")).to include("Rank: 3")
      expect(lb.show_stats("Colts")).to include("Rank: 4")
    end
  end

  describe "#display" do
    it "should display the leaderboard in the terminal" do
      lb.updated(1,1,1)
      expect(lb.display).to include("--------------------------------------------------")
      expect(lb.display).to include("| Name      Rank      Total Wins    Total Losses |")
      expect(lb.display).to include("| Patriots  1         3             0            |")
      expect(lb.display).to include("| Steelers  2         1             1            |")
      expect(lb.display).to include("| Broncos   3         1             2            |")
      expect(lb.display).to include("| Colts     4         0             2            |")
    end
  end

  describe "#team_game_summary" do
    it "should takes a parameter of a team object and prints the details of each game that team played" do
      lb.updated(1,1,1)
      expect(lb.team_game_summary(lb.teams[0])).to include("Patriots played 3 games.")
      expect(lb.team_game_summary(lb.teams[0])).to include("They played as the home team against the Broncos and won: 17 to 13.")
      expect(lb.team_game_summary(lb.teams[0])).to include("They played as the home team against the Colts and won: 21 to 17.")
      expect(lb.team_game_summary(lb.teams[0])).to include("They played as the away team against the Steelers and won: 31 to 24.")
    end
  end
end
