require_relative "dwelling"

class Apartment < Dwelling
  attr_accessor :rent, :lease_start_date, :lease_end_date, :maximum_occupants, :occupants

  @rent = nil
  @lease_start_date = nil
  @lease_end_date = nil
  @maximum_occupants = 0

  def initialize
    @occupants = []
  end

  def full?
    @occupants.count == @maximum_occupants
  end

  def add_roomate(renter)  
    if !full? 
      @occupants << renter
    else
      raise "No rooms available!"
    end
  end

  def remove_roomate(first_name,last_name)
  @occupants.reject! {|renter| renter.first_name == first_name && renter.last_name == last_name}
  end
end