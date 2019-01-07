require './main.rb'
require 'minitest/autorun'

# Test class
class Test < MiniTest::Unit::TestCase
  def setup
    @x = rand * 10 - 5
    @y = rand * 10 - 5
    @z = rand * 10 - 5
  end

  def test_1
    assert_in_delta(Math.log(((@y - @x.abs()**0.5) / (@x - @y / (@z + @x**2))).abs())),
                    evaluate(@x, @y, @z), 1.0e-10)
  end

  # def test_2
  # assert_nil(evaluate(0, @y, 0))
  # end

  def test_3
    assert_in_delta(4.033486369448158, evaluate(3.0, 2.0, 1.0), 1.0e-10)
  end

  def test_4
    assert_in_delta(0.32540886256149243, evaluate(13.0, 2.0, 3.0), 1.0e-10)
  end

  def test_5
    assert_in_delta(52.59786793255009, evaluate(13.0, 12.0, 11.0), 1.0e-10)
  end
end
