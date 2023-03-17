require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :sides

  def initialize(a , b, c)
    @sides = [a , b , c].sort  
  end

  def is_triangle?()
    ( (@sides.all? {|side| side > 0} )  && ( (@sides[0] + @sides[1]) > @sides[2] ) )
    
  end

  def type_of_triangle()
    if ((@sides[0] == @sides[1]) && (@sides[1] == @sides[2]))
    return :equilateral 
    elsif ( (@sides[0] == @sides[1]) || (@sides[1] == @sides[2] ) || (@sides[0] == @sides[2]) )
    return :isosceles
    else
    return  :scalene
    end
  end

  def kind()
    if is_triangle?
      return type_of_triangle 
    else 
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end


end
