class Card
attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def type?
    type = ''
    if ['J','Q','K'].any? { |face| @rank == face }
      type = 'face'
    elsif @rank == 'A'
      type = 'ace'
    else
      type = 'number'
    end
  end
end
