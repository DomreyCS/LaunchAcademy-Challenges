class Box
  attr_reader :owner

  def initialize(owner)
    @owner = "#{owner.first_name} #{owner.last_name}"
  end
end