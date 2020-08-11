class Triangle
  attr_accessor :side1, :side2, :side3
 @sides = []

 def initialize(side1, side2, side3)
   @side1, @side2, @side3 = side1, side2, side3
   @sides = [side1, side2, side3]
 end
end
