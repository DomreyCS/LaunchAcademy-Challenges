class Truck
  attr_accessor :capacity, :boxes

  def initialize(capacity=100)
    @capacity = capacity
    @boxes = []
  end

  def full?
    boxes.count == capacity ? true : false
  end

  def add_box(box)
    boxes << box
  end

  def remove_box
    boxes.pop
  end

  def unload(owner)
    boxes.reject! { |box| box[:owner] == owner }
  end
end