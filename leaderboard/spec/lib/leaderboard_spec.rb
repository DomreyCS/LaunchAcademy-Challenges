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
      lb.get_teams
      lb.update_stats
      expect(lb.show_stats("Steelers")).to include("Wins: 1")
      expect(lb.show_stats("Patriots")).to include("Wins: 3")
    end
  end

  describe "#rank_teams" do
    it "should sort teams by wins and set their ranks" do
      lb.get_teams
      lb.update_stats
      lb.rank_teams
      expect(lb.show_stats("Patriots")).to include("Rank: 1")
      expect(lb.show_stats("Steelers")).to include("Rank: 2")
      expect(lb.show_stats("Broncos")).to include("Rank: 3")
      expect(lb.show_stats("Colts")).to include("Rank: 4")

    end
  end

  # describe "#display" do
  #   it "should display the leaderboard in the terminal"
  # end
end
