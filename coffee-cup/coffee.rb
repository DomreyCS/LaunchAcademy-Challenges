class CoffeeCup

  def initialize(fill = 8, max = 12)
    @fill = fill
    @max = max
  end

  def sip!
    puts @fill > 0 ? @fill -= 1 : "Hey! You need a refill!" 
  end

  def spill!
    @fill = 0
  end

  def refill!
    @fill = @max - 2
  end
end