gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'checkerboard'

class CheckerboardTest < Minitest::Test
  def test_small_board
    expected = <<-BOARD
B W
W B
BOARD
    assert_equal expected, Checkerboard.new(2).to_s
  end

  def test_cell_colors
    board = Checkerboard.new(2)

    assert board.black?(0, 0)
    assert board.black?(1, 1)
    refute board.black?(0, 1)
    refute board.black?(1, 0)

    refute board.white?(0, 0)
    refute board.white?(1, 1)
    assert board.white?(0, 1)
    assert board.white?(1, 0)
  end

  def test_bigger_board
    expected = <<-BOARD
B W B
W B W
B W B
BOARD
    assert_equal expected, Checkerboard.new(3).to_s
  end

  def test_chess_board
    expected = <<-BOARD
B W B W B W B W
W B W B W B W B
B W B W B W B W
W B W B W B W B
B W B W B W B W
W B W B W B W B
B W B W B W B W
W B W B W B W B
BOARD
    assert_equal expected, Checkerboard.new(8).to_s
  end
end
