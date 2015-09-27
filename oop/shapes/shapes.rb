class Shape
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end

  def area
    @side_length + @side_length
  end

  def perimeter
    @side_length * 4
  end

  def Square.count
    @@number_of_squares
  end
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if defined?(@@number_of_triangles)
      @@number_of_triangles += 1
    else
      @@number_of_triangles = 1
    end
  end

  def area
    (@base_width + @height)/2
  end

  def perimeter
    @side1 + @side2 + @side3
  end

  def Triangle.count
    @@number_of_triangles
  end
end

mySquare = Square.new(5)
p mySquare.area
p mySquare.perimeter
p Square.count

myTriangle = Triangle.new(5,10,2,4,6)
p myTriangle.area
p myTriangle.perimeter

mySecondTriangle = Triangle.new(20,40,8,12,24)
p mySecondTriangle.area
p mySecondTriangle.perimeter

p Triangle.count
