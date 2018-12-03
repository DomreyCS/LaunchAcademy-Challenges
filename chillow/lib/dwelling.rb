class Dwelling
  attr_accessor :address, :state, :city_or_town, :zip_code

  def initialize(address=nil,city_or_town=nil,state=nil,zipcode=nil)
    @address = address
    @state = state
    @city_or_town = city_or_town
    @zip_code = zipcode
  end
end