require 'test_helper'

class MoviesHelperTest < ActionView::TestCase
  test "returns properly formatted errors from array" do
    actual_result = errors_for(["can't be blank", "Your description is far too short"])
    expected_result = "<p class='text-error'>Can't be blank<br />Your description is far too short</p>"

    assert_equal expected_result, actual_result
  end

  test "returns false if array is empty" do
    assert_nil errors_for([])
  end
end
