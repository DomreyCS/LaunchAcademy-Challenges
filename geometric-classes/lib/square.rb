class Square
  attr_accessor :width, :length, :x, :y

  def initialize(sides, x=0, y=0)
    @length = sides
    @width = sides
    @x = x
    @y = y
  end

  def diameter
    Math.sqrt(2) * @length
  end

  def perimeter
    @length * 4
  end

  def area
    @length * @width
  end

  def contains_point?(x, y)
    if x >= @length || x < 0
      false
    elsif y >= @length || y < 0
      false
    else
      true
    end
  end
end
