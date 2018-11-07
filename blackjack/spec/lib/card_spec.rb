require "spec_helper"

RSpec.describe Card do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:queen_hearts) { queen_hearts = Card.new('♥', 'Q') }
  let(:ace_spades) { ace_spades = Card.new('♠', 'A') }
  let(:four_clubs) { four_clubs = Card.new('♣', 4) }

  describe "initialize" do
    it "should take in 2 arguments for suit and rank" do
      expect(queen_hearts).to be_a(Card)
    end
  end

  describe "#suit" do
    it "should have a reader for suit" do
      expect(queen_hearts.suit).to eq('♥')
      expect(ace_spades.suit).to eq('♠')
      expect(four_clubs.suit).to eq('♣')
    end
  end

  describe "#rank" do
    it "should have a reader for rank" do
      expect(queen_hearts.rank).to eq('Q')
      expect(ace_spades.rank).to eq('A')
      expect(four_clubs.rank).to eq(4)
    end
  end

  describe "#type?" do
    it "should return true/false if card has a rank of 'J', 'Q' or 'K'" do
      expect(queen_hearts.type?).to eq('face')
      expect(four_clubs.type?).to eq('number')
      expect(ace_spades.type?).to eq('ace')
    end
  end
end
