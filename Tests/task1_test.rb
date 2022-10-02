require 'minitest/autorun'
require_relative '../task1.rb'

class Test_task_1 < Minitest::Test
  def test_1
    assert_equal [1,-1,4,-1], function1([1,2,4,2], -1)
  end
  def test_2
    assert_equal [1,2,3,4,5], function1([1,2,3,4,5], -1)
  end
  def test_3
    assert_equal [1,5,5,4,5], function1([1,9,9,4,9], 5)
  end
  def test_4
    assert_equal [1,5,5,4,5], function1([1,5,5,4,5], 5)
  end
  def test_5
    assert_equal [1,5,5,4,5,6,5], function1([1,9,-2,4,-2,6,9], 5)
  end
end
