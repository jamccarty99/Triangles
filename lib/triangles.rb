class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def numeric?(input)
    return true if input =~ /\A\d+\Z/
    true if Float(input) rescue false
  end

  def inputs?
    if !numeric?(@side1)
      return "Side1 is not a valid input"
    elsif !numeric?(@side2)
      return "Side2 is not a valid input"
    elsif !numeric?(@side3)
      return "Side3 is not a valid input"
    end
  end

  def triangle?
    inputs?
    if (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side3 + @side2) <= @side1
      return "Not a triangle!"
    else
      type?
    end
  end

  def type?
    #equilateral: all sides are equal;
    if (@side1 == @side2) && (@side1 == @side3)
      return "This is an equilateral triangle!"
    #isosceles: exactly 2 sides are equal;
    elsif (@side1 == @side2 && @side1 != @side3) || (@side3 == @side2 && @side3 != @side1) || (@side1 == @side3 && @side1 != @side2)
      return "This is an isosceles triangle!"
    #scalene: no sides are equal.
    else
      return "This is a scalene triangle!"
    end
  end
end
