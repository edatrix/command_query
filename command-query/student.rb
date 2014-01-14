class Student

  def initialize(grade = "C")
    @letter_grades = ["A", "B", "C", "D", "F"]
    @current_index = @letter_grades.index(grade)
  end

  def grade
    @letter_grades[@current_index]
  end

  def study
    @current_index -= 1 unless @current_index == 0
  end

  def slack_off
    unless @current_index == (@letter_grades.length-1)
      @current_index += 1
    end
  end

end
