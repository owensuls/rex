class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    myperimeter = 2 * (@length + @breadth)
    return myperimeter
  end
end
