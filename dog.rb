class Dog

  def initialize
    @eats = false
  end

  def hungry?
    !@eats
  end

  def eat
    @eats = true
  end

end
