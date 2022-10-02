require 'minitest/autorun'
require_relative '../task3.rb'

class Test_task_3 < Minitest::Test
  def test_1
    res = function3(3,1)
    res.map!{|i| i.round(2)}
    assert_equal [1.25, 0.25, -0.75], res
  end
  def test_2
    res = function3(4,-5)
    res.map!{|i| i.round(4)}
    assert_equal [-0.6571, -0.4571, -0.2571, -0.0571], res
  end
end
