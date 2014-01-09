class Appointments

  def initialize
    @slots = []
  end

  def earliest
    @slots.min
  end

  def at(time)
    @slots << time
  end

end
