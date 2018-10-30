class Airplane
  attr_accessor :type, :wing_loading, :horsepower

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @start = false
    @flying = false
    @landed = true
  end

  def start
    if @start
      "airplane already started"
    else
      @start = !@start
      "airplane started"
    end
  end

  def takeoff
    if @start
      @flying = !@flying
      "airplane launched"
    else
      "airplane not started, please start"
    end
  end

  def land
    if @start && @flying
      "airplane landed"
    elsif @start && !@flying
      "airplane already on the ground"
    else
      "airplane not started, please start"
    end
  end
end
