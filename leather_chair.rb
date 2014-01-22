class LeatherChair

  def faded?
    @expose_to_sunlight
  end

  def expose_to_sunlight
    @expose_to_sunlight = true
  end

end
