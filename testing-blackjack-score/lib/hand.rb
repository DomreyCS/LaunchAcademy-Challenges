require_relative 'deck'

class Hand
  def initialize(cards)
    # Your def initialize is taking in an array of cards as an argument
    @cards = cards
  end

  def calculate_hand
    score = 0
    aces = 0
    @cards.each do |card|
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
