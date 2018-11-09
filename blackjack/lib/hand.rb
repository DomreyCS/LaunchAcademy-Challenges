class Hand
  attr_accessor :hand

  def initialize(cards = [])
    @hand = cards
  end

  def get_score
    score = 0
    aces = 0
    @hand.each do |card|
      if ['J','Q','K'].any? {|face| face == card.rank}
        score += 10
      elsif card.rank == "A"
        aces += 1
      else
        score += card.rank
      end
    end

    until aces == 0 do
      if aces >= 1 && score <= 10 
        score += 11
        aces -= 1
      elsif aces >= 1 && score >= 11 
        score += 1
        aces -= 1
      end
    end
    score
  end
end
