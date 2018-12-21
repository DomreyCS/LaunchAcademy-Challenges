class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def postgrad_kickoff
    @end_date += 4
  end

  def enroll(new_student)
    if !@students.any? { |student| student.name == new_student.name }
      @students << new_student
    end
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster = "#{@title}\n"
    @students.each { |student| roster << "#{student.name} #{student.email}\n" }
    roster
  end
end
