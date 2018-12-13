require_relative "capacity"

class Truck
  include Capacity

  def initialize(max=100)
    @max = max
    @current = []
  end

  def unload(owner)
    @current.reject! { |box| box[:owner] == owner }
  end
end
