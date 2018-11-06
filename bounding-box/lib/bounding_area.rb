class BoundingArea
  def initialize(boxes)
    @collection = boxes
  end

  def boxes_contain_point?(x, y)
    @boxes.any? { |box| box.contains_point?(x,y) }
  end
end
