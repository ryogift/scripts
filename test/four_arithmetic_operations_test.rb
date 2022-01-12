require "minitest/autorun"
require "./lib/four_arithmetic_operations"

# 四則演算テスト
class TestFourArithmeticOperations < Minitest::Test
  def test_addition
    four_arithmetic_operations = FourArithmeticOperations.new(1, 1)
    result = four_arithmetic_operations.addition
    assert_equal(2, result)
  end

  def test_subtraction
    four_arithmetic_operations = FourArithmeticOperations.new(1, 1)
    result = four_arithmetic_operations.subtraction
    assert_equal(0, result)
  end

  def test_multiplication
    four_arithmetic_operations = FourArithmeticOperations.new(1, 1)
    result = four_arithmetic_operations.multiplication
    assert_equal(1, result)
  end

  def test_division
    four_arithmetic_operations = FourArithmeticOperations.new(1, 1)
    result = four_arithmetic_operations.division
    assert_equal(1, result)
  end
end
