class Triangle
  attr_accessor :length_A, :length_B, :length_C,
  @triangle = []

  def initialize(length_A, length_B, length_C)
    @length_A = length_A
    @length_B = length_B
    @length_C = length_C
    @triangle = length_A, length_B, length_C
  end

  def triangle_inequality?
    (@length_B + @length_C > @length_A) && (@length_A + @length_C > @length_B) && (@length_A + @length_B > @length_C)
  end

  def pass?
    if (@length_A >= 0) && (@length_B >= 0) && (@length_C >= 0)
      return true
    else
      return false
    end
  end

  def equilateral? #all sides are equal
    (length_A == length_B) && (length_A == length_C)
  end

  class TriangleError < StandardError
  end
end
