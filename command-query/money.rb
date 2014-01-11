class Money

  def initialize
    @dollars = 0
  end

  def amount
    @dollars
  end

  def earn(dollars)
    @dollars = amount + dollars
  end

  def pay(dollars)
    @dollars = amount - dollars
  end

end
