require_relative 'test_helper'
require_relative 'first_error_reporter'
require_relative 'face'

class ShovelFaceTest < HomeworkTest
  def test_shovel_on_face
    face = Face.new
    face << "apple"
    face << "bread"
    face << "chicken"
    assert_equal face.foods_eaten

    # Go look at the Face class.
    # How do you define `<<`?
  end
end
