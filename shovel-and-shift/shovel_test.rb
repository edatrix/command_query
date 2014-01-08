require_relative 'test_helper'
require_relative 'first_error_reporter'
require 'date'
require 'csv'
require_relative 'face'

class ShovelTest < FillInTheBlankTest
  def test_shovel_on_string
    s = ""
    s << "a"
    s << "b"
    s << "c"
    equal_to_what 's'

    # Explain in English what `<<` does to a string.
  end

  def test_shovel_on_array
    a = []
    a << "a"
    a << "b"
    a << "c"
    equal_to_what 'a'

    # Explain in English what `<<` does to an array.
  end

  def test_shovel_on_array_inside_hash
    hash = {"letters" => [], "numbers" => []}

    hash["letters"] << "a"
    hash["letters"] << "b"
    hash["letters"] << "c"

    hash["numbers"] << 1
    hash["numbers"] << 2
    hash["numbers"] << 3

    equal_to_what 'hash["letters"]'
    equal_to_what 'hash["numbers"]'
  end

  def test_shift_left_on_fixnum
    i1 = 1 << 1
    i2 = 1 << 2
    i3 = 1 << 3
    i4 = 1 << 4
    i5 = 1 << 5
    i6 = 1 << 6

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i4'
    equal_to_what 'i5'
    equal_to_what 'i6'

    # Now let's look at these numbers in binary.
    equal_to_what 'i1.to_s(2)'
    equal_to_what 'i2.to_s(2)'
    equal_to_what 'i3.to_s(2)'
    equal_to_what 'i4.to_s(2)'
    equal_to_what 'i5.to_s(2)'
    equal_to_what 'i6.to_s(2)'
  end

  def test_shift_left_on_fixnum_with_negative_numbers
    i1 = 64 << -1
    i2 = 64 << -2
    i3 = 64 << -3
    i4 = 64 << -4
    i5 = 64 << -5
    i6 = 64 << -6

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i4'
    equal_to_what 'i5'
    equal_to_what 'i6'
  end

  def test_shift_right_on_fixnum
    i1 = 64 >> 1
    i2 = 64 >> 2
    i3 = 64 >> 3
    i4 = 64 >> 4
    i5 = 64 >> 5
    i6 = 64 >> 6

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i4'
    equal_to_what 'i5'
    equal_to_what 'i6'
  end

  def test_shift_right_on_fixnum_with_negative_numbers
    i1 = 1 >> -1
    i2 = 1 >> -2
    i3 = 1 >> -3
    i4 = 1 >> -4
    i5 = 1 >> -5
    i6 = 1 >> -6

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i4'
    equal_to_what 'i5'
    equal_to_what 'i6'
  end

  def test_more_shifty_business_on_fixnum
    i1 = 7 << 1
    i2 = 7 << 2
    i3 = 7 << 3

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i1.to_s(2)'
    equal_to_what 'i2.to_s(2)'
    equal_to_what 'i3.to_s(2)'

    i1 = 52 >> 1
    i2 = 52 >> 2
    i3 = 52 >> 3

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i1.to_s(2)'
    equal_to_what 'i2.to_s(2)'
    equal_to_what 'i3.to_s(2)'

    i1 = 79 >> 1
    i2 = 79 >> 2
    i3 = 79 >> 3

    equal_to_what 'i1'
    equal_to_what 'i2'
    equal_to_what 'i3'
    equal_to_what 'i1.to_s(2)'
    equal_to_what 'i2.to_s(2)'
    equal_to_what 'i3.to_s(2)'
  end

  # Explain in English what `<<` and `>>` do to a number.

  def test_shift_left_on_date
    date = Date.new(2013, 11, 2)
    equal_to_what "date.strftime('%e %b, %Y')"

    date1 = date << 1
    date2 = date << 2
    date3 = date << 3
    date4 = date << 4

    equal_to_what "date1.strftime('%e %b, %Y')"
    equal_to_what "date2.strftime('%e %b, %Y')"
    equal_to_what "date3.strftime('%e %b, %Y')"
    equal_to_what "date4.strftime('%e %b, %Y')"
  end

  def test_shift_right_on_date
    date = Date.new(2013, 10, 31)
    equal_to_what "date.strftime('%e %b, %Y')"

    date1 = date >> 1
    date2 = date >> 2
    date3 = date >> 3
    date4 = date >> 4

    equal_to_what "date1.strftime('%e %b, %Y')"
    equal_to_what "date2.strftime('%e %b, %Y')"
    equal_to_what "date3.strftime('%e %b, %Y')"
    equal_to_what "date4.strftime('%e %b, %Y')"
  end

  # Explain in English what `<<` and `>>` do to a date.

  def test_shovel_on_csv
    row = CSV::Row.new(["name", "age"], ["Alice", 23])

    row << ["profession", "astronomer"]
    equal_to_what "row.to_csv"
    equal_to_what "row.to_hash"

    row << {phone: "(123) 123-1234", salary: "USD 98,000"}
    equal_to_what "row.to_csv"
    equal_to_what "row.to_hash"

    # Explain in English what `<<` does to a csv row.
  end

  def test_shovel_on_face
    face = Face.new
    face << "apple"
    face << "bread"
    face << "chicken"
    equal_to_what "face.foods_eaten"

    # Go look at the Face class.
    # How do you define `<<`?
  end
end
