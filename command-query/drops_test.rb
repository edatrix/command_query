gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'drops'

class DropsTest < Minitest::Test
  def test_no_drops
    drops = Drops.new
    assert_equal 0, drops.count
  end

  def test_drip
    # skip
    drops = Drops.new
    drops.drip
    assert_equal 1, drops.count
  end

end
