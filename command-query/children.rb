class Children

  def initialize
    @children = []
  end

  def eldest
    if !@children.empty?
      group = @children.max_by do |child|
        child.age
      end
      group.name
    end
  end

  def <<(child)
    @children << child
  end

end
