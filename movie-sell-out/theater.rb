class Theater
  attr_accessor(:capacity, :patrons)

  def initialize(capacity)
    @capacity = capacity
    @admitted = 0
  end

  def admit!(patrons = 1)
    if @admitted + patrons > @capacity
      "We're sorry! we cannot accomodate your request."
    else
      @admitted += patrons
    end
  end

  def at_capacity?
    @admitted == @capacity ? true : false
  end

  def record_walk_outs!(patrons = 1)
    @admitted -= patrons
  end
end
