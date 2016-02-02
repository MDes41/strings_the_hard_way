require 'minitest/autorun'
require_relative '../lib/strings_the_hard_way'

class StringsTest < Minitest::Test
  attr_reader :s
  def setup
    @s = Strings.new
  end

  def test_that_one_character_is_counted_length_method
    assert_equal 1, s.length("p")
    assert_equal 5, s.length("pizza")
  end

  def test_that_upcase_capitalizes
    assert_equal "P", s.upcase("p")
    assert_equal "PIZZA", s.upcase("pizza")
  end

  def test_that_sub_sub_first_letter
    assert_equal "fog", s.sub("dog", "d", "f")
    assert_equal "fod", s.sub("dod", "d", "f")
  end
end
