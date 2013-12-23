class Floor

  def dirty?
    !@washed
  end

  def wash
    @washed = true
  end

end
