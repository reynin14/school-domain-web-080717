
class School
  attr_accessor :roster, :name, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade) == false
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade|
      grade[1].sort!
    end
  end

end
