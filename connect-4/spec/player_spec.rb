require 'spec_helper'
require_relative '../lib/player'

RSpec.describe Player do
  let(:p1) { p1 = Player.new("Elise") } 
  describe ".new" do
    it "creates new player" do
      expect(p1).to be_a(Player)
    end
  end

  describe "#name" do
    it "takes a name as an argument" do
      expect(p1.name).to eq("Elise")
    end
  end
    

end