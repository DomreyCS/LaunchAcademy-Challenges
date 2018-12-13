require_relative "cage"

class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_open, season_close)
    @name = name
    @season_open = season_open
    @season_close = season_close
    @cages = Array.new(10, Cage.new)
    @employees = []
  end

  def add_employee(name)
    @employees << name
  end

  def open?(date)
    date >= @season_open && date <= @season_close
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
      binding.pry
    end
  end
end