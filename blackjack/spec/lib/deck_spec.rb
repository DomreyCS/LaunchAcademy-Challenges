require "spec_helper"

RSpec.describe Deck do
  let(:deck) { deck = Deck.new }
  let(:king_diamond) { king_diamond = Card.new('♦', 'K')}

  describe ".new" do
    it "should create a new deck of 52 cards" do
      expect(deck).to be_a(Deck)
    end
  end

  describe "#cards" do
    it "should be an array of cards" do
      expect(deck.cards).to be_a(Array)
    end

    it "should initialize with 52 card objects" do
      expect(deck.cards.size).to eq(52)
    end
  end

  describe "#deal" do
    it "should deal cards from top of the deck" do
      deck.cards << king_diamond
      expect(deck.deal).to eq(king_diamond)
    end
  end
end
