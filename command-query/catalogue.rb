class Catalogue

  def initialize
    @catalogue = []
  end

  def cheapest
    unless @catalogue.empty?
      item_list = @catalogue.min_by do |c|
        c.price
      end
      item_list.item
    end
  end

  def <<(product)
    @catalogue << product
  end

end
