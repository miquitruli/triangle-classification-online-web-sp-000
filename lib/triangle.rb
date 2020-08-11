class Triangle
  attr_accessor :length_A, :length_B, :length_C
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
    if (@length_A <= 0) && (@length_B <= 0) && (@length_C <= 0)
      return false
    else
      return true
    end
  end

  def kind
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end


    if(pass? == false || triangle_inequality? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def equilateral? #all sides are equal
    (length_A == length_B) && (length_A == length_C)
  end

  def isosceles?
    (length_A == length_B) || (length_A == length_C) || (length_B == length_C)
  end

  def scalene?
    (length_A != length_B) && (length_A != length_C) && (length_B != length_C)
  end



end

class TriangleError < StandardError
end
