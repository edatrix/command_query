require_relative 'test_helper'
require_relative 'first_error_reporter'
require 'csv'

class ShovelCSVTest < HomeworkTest
  def test_shovel_on_csv
    row = CSV::Row.new(["name", "age"], ["Alice", 23])

    row << ["profession", "astronomer"]
    assert_equal __, row.to_csv
    assert_equal __, row.to_hash

    row << {phone: "(123) 123-1234", salary: "USD 98,000"}
    assert_equal __, row.to_csv
    assert_equal __, row.to_hash

    # Explain in English what `<<` does to a csv row.
  end
end
