class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    elsif @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
      raise TriangleError
    elsif @one == @two && @one == @three
      :equilateral
    elsif (@one == @two && @one != @three) || (@one == @three && @one != @two) || (@two == @three && @two != @one)
      :isosceles
    else
      :scalene
    end
  end
end


class TriangleError < StandardError
  def message
    "invalid lengths for a triangle"
  end
end
