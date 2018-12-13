require_relative "dwelling"
require_relative "capacity"

class Apartment < Dwelling
  include Capacity
    attr_accessor :rent, :lease_start_date, :lease_end_date


  @rent = nil
  @lease_start_date = nil
  @lease_end_date = nil

  def initialize
    @max = 0
    @current = []
  end

end