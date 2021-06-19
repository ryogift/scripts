# 四則演算
class FourArithmeticOperations
  def initialize(left_side, right_side)
    @left_side = left_side
    @right_side = right_side
  end

  # 加法
  def addition
    @left_side + @right_side
  end

  # 減法
  def subtraction
    @left_side - @right_side
  end

  # 乗法
  def multiplication
    @left_side * @right_side
  end

  # 除法
  def division
    @left_side / @right_side
  end
end
