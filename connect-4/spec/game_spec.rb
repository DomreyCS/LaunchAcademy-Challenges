require "spec_helper"
require_relative "../lib/game"

RSpec.describe Game do
  describe "#players" do
    it "should have class variable of player names" do
      new_game = Game.new(["Dara", "Elise"])
      expect(new_game.players).to eq(["DARA", "ELISE"])
    end
  end

  describe "#valid_name?" do
    it "should return true if player's name does not exist yet in the game" do
      new_game = Game.new(["Dara"])
      expect(new_game.valid_name?("Elise")).to eq(true)
    end
    it "should return false if name already exist" do
      new_game = Game.new(["Elise"])
      expect(new_game.valid_name?("Elise")).to eq(false)
    end
  end

  describe "#add_player" do
    it "should add a name to the @players" do
      new_game = Game.new
      new_game.add_player("Dara")
      expect(new_game.players).to eq(["DARA"])
    end
  end
  describe "replay?"
end