module Capacity
  attr_accessor :current, :max

  def full?
    @current.count == @max ? true : false
  end

  def add(item)
    @current << item
  end

  def remove
    @current.pop
  end
end