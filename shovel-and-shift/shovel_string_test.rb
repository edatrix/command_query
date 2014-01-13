require_relative 'test_helper'
require_relative 'first_error_reporter'

class ShovelStringTest < HomeworkTest
  def test_string_equality
    s1 = ""
    s2 = ""
    maybe s1.object_id == s2.object_id
    maybe s1 == s2
  end

  def test_shovel_emptiness
    s1 = ""
    s2 = s1 << ""
    maybe s1.object_id == s2.object_id
    maybe s1 == s2
  end

  def test_add_emptiness
    s1 = ""
    s2 = s1 + ""
    maybe s1.object_id == s2.object_id
    maybe s1 == s2
  end

  def test_shovel_onto_a_string
    s1 = ""
    s2 = s1
    s2 << "a"
    s2 << "b"
    s2 << "c"

    assert_equal __, s2
    assert_equal __, s1
  end

  # Explain in English what `<<` does to a string.

  def test_add_two_strings
    s1 = ""
    s2 = s1
    s2 = s2 + "a"
    s2 = s2 + "b"
    s2 = s2 + "c"

    assert_equal __, s2
    assert_equal __, s1
  end

  # How is shoveling different from adding?
end
