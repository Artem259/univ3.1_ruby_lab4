require 'minitest/autorun'
require_relative '../task2.rb'

class Test_task_2 < Minitest::Test
  def test_1
    assert_equal 0, function2(Vector[0,0,0,0,0])
  end
  def test_2
    assert_equal 5.937171043518958, function2(Vector[3,-2.5,4,0,-2])
  end
  def test_3
    assert_equal 9.539392014169456, function2(Vector[1,2,3,4,5,6])
  end
end
