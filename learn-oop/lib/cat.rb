class Cat
  attr_reader(:name, :lives)
  
  def initialize(name, lives = 9)
    @name = name
    @lives = lives
  end
end