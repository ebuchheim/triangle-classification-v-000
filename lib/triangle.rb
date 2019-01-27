class Triangle
  attr_accessor :one, :two, :three
  # write code here

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if !(@one > 0) || !(@two > 0) || !(@three > 0)
      raise TriangleError
    elsif (@one + @two) <= @three
      raise TriangleError
    elsif (@three + @two) <= @one
      raise TriangleError
    elsif (@one + @three) <= @two
      raise TriangleError
    elsif @one == @two && @one == @three
      :equilateral
    elsif @one == @two || @one == @three || @two == @three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "All sides must be greater than 0, and any two must be larger than the third."
    end
  end
end
