require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    kind
  end
  
  
  def kind
    #binding.pry
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side2 == @side3 && (@side1 + @side2) > @side3
      :isosceles
    elsif @side1 == @side3 && (@side1 + @side2) > @side3
      :isosceles
    elsif @side1 == @side2 && (@side1 + @side2) > @side2
      :isosceles
    elsif @side1 != @side2 && (@side1 + @side2) > @side3
      :scalene
    elsif @side1 == 0 && @side2 == 0 && @side3 == 0
      begin
        raise TriangleError
      rescue TriangleEror => error 
        puts error.message
      end
    end
  end
  
  
  class TriangleError < StandardError
    def message
      "not a valid triangle"  
    end
  end
end
