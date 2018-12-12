require_relative "dwelling"

class House < Dwelling
  attr_accessor :asking_price

  @asking_price = nil
end