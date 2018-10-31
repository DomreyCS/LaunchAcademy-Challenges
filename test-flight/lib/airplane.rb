class Airplane
  attr_reader :type, :wing_loading, :horsepower, :flying
  attr_accessor :fuel 

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @start = false
    @flying = false
    @fuel = 100
  end

  def start
    if @fuel < 5
      "Not enough fuel to start"
    elsif @start == false
      @start = true
      @fuel -= 1
      "airplane started"
    else
      "airplane already started"
    end
  end

  def takeoff
    if @fuel < 8
      return "Not enough fuel for takeoff"
    elsif @start == true
      @flying = true
      @fuel -= 8
    else 
      @flying = false
    end
    
    @flying ? "airplane launched" : "airplane not started, please start" 
  end

  def land
    if @fuel < 4
      return "Not enough fuel to land"
    elsif @start == false
      "airplane not started, please start"
    elsif @flying == true
      @flying = false
      @fuel -= 4
      "airplane landed"
    else
      "airplane already on the ground"
    end
  end


end
