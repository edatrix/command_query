class Names

  def initialize
    @names = []
  end

  def longest
    @names.max_by do |name|
      name.length
    end
  end

  def << (input)
    @names << input
  end

end
