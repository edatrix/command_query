class Adult

  def initialize
    @sober = true
    @had_drink = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @had_drink += 1
    if @had_drink >= 3
      @sober = false
    end
  end
end
