class Pills

  def initialize
    @number_of_pills = 60
  end

  def count
    @number_of_pills
  end

  def pop
    @number_of_pills -= 1
  end

end
