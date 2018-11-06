class BoundingBox
  attr_reader :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point?(x, y)
    within_x = x >= @x && x <= @x + @width ? true : false
    within_y = y >= @x && y <= @y + @height ? true : false
    within_x && within_y
  end
end
