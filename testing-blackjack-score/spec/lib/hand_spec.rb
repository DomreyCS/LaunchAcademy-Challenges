require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'
  let(:two_three) { Hand.new([Card.new("♦",2), Card.new("♥",3)]) }
  let(:j2) { Hand.new([Card.new("♦","J"), Card.new("♥",2)]) }
  let(:jj) { Hand.new([Card.new("♦","J"), Card.new("♥","J")]) }
  let(:k10) { Hand.new([Card.new("♦","K"), Card.new("♥",10)]) }
  let(:a10) { Hand.new([Card.new("♦","A"), Card.new("♥",10)]) }
  let(:aq) { Hand.new([Card.new("♦","A"), Card.new("♥","Q")]) }
  let(:a34) { Hand.new([Card.new("♦","A"), Card.new("♥",3), Card.new("♥",4)]) }
  let(:a47) { Hand.new([Card.new("♦","A"), Card.new("♥",4), Card.new("♥",7)]) }
  let(:a47q) { Hand.new([Card.new("♦","A"), Card.new("♥",4), Card.new("♥",7), Card.new("♥","Q")]) }
  let(:a7a) { Hand.new([Card.new("♦","A"), Card.new("♥",7), Card.new("♥","A")]) }


  describe "#calculate_hand" do
    it "calculates non-face value cards as their value indicates" do
      expect(two_three.calculate_hand).to eq(5)
    end

    it "should calculate the face cards as 10" do
      expect(j2.calculate_hand).to eq(12)
      expect(jj.calculate_hand).to eq(20)
      expect(k10.calculate_hand).to eq(20)
    end

    it "should count Ace as 11 only when this would not make the total more than 21" do
      expect(a10.calculate_hand).to eq(21)
      expect(aq.calculate_hand).to eq(21)
      expect(a34.calculate_hand).to eq(18)
      expect(a47.calculate_hand).to eq(12)
      expect(a47q.calculate_hand).to eq(22)
    end

    it "should count a second ace as 1" do
      expect(a7a.calculate_hand).to eq(19)
    end
  end
end
