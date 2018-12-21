class SystemCheckSubmission
  attr_reader :solution, :student, :grade

  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = nil
  end

  def assign_grade(grade)
    if grade == -5000
      "Invalid Grade Error!"
    else
      @grade = grade
    end
  end

  def graded?
    @grade == nil ? false : true
  end
end
