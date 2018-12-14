require_relative "cage"

class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_open, season_close)
    @name = name
    @season_open = season_open
    @season_close = season_close
    @cages = []
    10.times {@cages << Cage.new}
    @employees = []
  end

  def add_employee(name)
    @employees << name
  end

  def open?(date)
    date >= @season_open && date <= @season_close
  end

  def add_animal(animal)
    available_cages = @cages.select { |cage| cage.empty? }

    if available_cages.count < 1
      "Your zoo is already at capacity!"
    else
      available_cages.first.animal = animal
    end
  end

  def visit
    greeting = ""
    @employees.each {|employee| greeting << "#{employee.name} waved hello!\n"}
    @cages.each do |cage|
      if !cage.empty?
        greeting << "#{cage.animal.speak}\n"
      end
    end
    greeting
  end
end