require_relative "lesson"

class SystemCheck < Lesson
  attr_reader :submissions

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    @submissions.reduce(0.0) { |sum, submission| sum + submission.grade } / @submissions.count
  end

  def did_student_complete_system_check?(student)
    @submissions.any? { |submission| submission.student.name == student.name } 
  end

  def submittable?
    true
  end
end
