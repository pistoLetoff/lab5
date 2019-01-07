require './main.rb'
require 'minitest/autorun'
# Test class
class Test < Minitest::Unit::TestCase
  def setup
    x = rand(1..7)
    @str = ''
    x.times do
      word = [*('a'..'z')].sample(20).join
      @str += word + ' '
    end
  end

  def test_logic_1
    assert_equal(coding(@str.to_s), @str.tr('a-z', 'b-z' + 'a'))
  end

  def test_logic_2
    assert_equal(decoding(coding(@str.to_s)), @str)
  end

  def test_check1
    assert_equal(coding('asd asdasd asda'), 'bte btebte bteb')
  end

  def test_check2
    assert_equal(coding('test ruby code aha'), 'uftu svcz dpef bib')
  end
end
