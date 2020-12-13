require 'test/unit'
require 'set'
require_relative 'nums'

class Tester < Test::Unit::TestCase
  def test_basic()
    shouldbe = 514579
    nums = Set[1721,979,366,299,675,1456]
    res = findtwo(nums, 2020)
    puts "#{res} #{shouldbe}"
    assert_equal(shouldbe, res)
  end

  def test_three()
    shouldbe = 241861950
    nums = Set[1721,979,366,299,675,1456]
    res = findthree(nums, 2020)
    puts "#{res} #{shouldbe}"
    assert_equal(shouldbe, res)
  end
end
