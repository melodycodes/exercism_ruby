class School
  VERSION = 1

  def initialize
    @students = Hash.new { |h, k| h[k] = [] }
  end

  def add(name, grade)
    @students[grade] << name
    @students[grade].sort!
  end

  def grade(n)
    @students[n]
  end

  def to_h
    @students.sort_by { |k, _| k }.to_h
  end
end
