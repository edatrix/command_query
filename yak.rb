class Yak

  def initialize
    @bald = false
  end

  def hairy?
    !@bald
  end

  def shave
    @bald = true
  end

end
