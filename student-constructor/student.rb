class Student
  def initialize(student)
    @first_name = student[:first_name]
    @last_name = student[:last_name]
    @grades = student[:grades]
    @average = @grades.reduce(:+) / @grades.length
  end
end

john = Student.new({first_name: 'John', last_name: 'Smith', grades: [90, 100, 85]})
puts john.inspect
jane = Student.new({first_name: 'Jane', last_name: 'Doe', grades: [85, 100, 100]})
puts jane.inspect