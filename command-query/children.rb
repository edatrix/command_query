class Children

  def initialize
    @children = []
  end

  def eldest
    if !@children.empty?
      group = @children.max_by do |child|
        child.age
      end
      group
    end
  end

  def <<(name)
    @children << name
  end

end
