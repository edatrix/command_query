class Cupcakes

  def initialize
    @cupcakes = []
  end

  def sweetest
    unless @cupcakes == []
      sweetest = @cupcakes.max_by do |cupcake|
        cupcake.grams
      end
      sweetest
    end
  end

  def <<(kind)
    @cupcakes << kind
  end

end
