require "spec_helper"
require_relative "../lib/game"

RSpec.describe Game do
  describe "#players" do
    it "should have class variable of player names" do
      new_game = Game.new(["Dara", "Elise"])
      expect(new_game.players).to eq(["DARA", "ELISE"])
    end
  end

  describe "#add_player" do
    it "should add a name to the @players" do
      new_game = Game.new
      new_game.add_player("Dara")
      expect(new_game.players).to eq(["DARA"])
    end
  end
end