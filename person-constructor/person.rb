class Person
  def initialize(name, last_name = nil, middle_name = nil)
    @first_name = name.split.length > 1 ? name.split[0] : name
    @last_name = last_name == nil ? name.split.last : last_name
    @middle_name = middle_name == nil && name.split.length > 2 ? name.split[1] : middle_name
  end
end

john = Person.new('John', 'Smith')
puts john.inspect