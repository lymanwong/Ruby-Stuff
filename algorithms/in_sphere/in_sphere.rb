=begin
To pass this kata you are required to complete the function in_sphere?. You will be given an array of cordinates and a radius. The function should return true if the coordinates describe a point within the given radius of the origin ([0,0...0]). A point with no co-ordinates should return true. (In zero dimensions all points are the same point)

In two dimensions the condition that any [x,y] co-ordinate lies in a circle is:-

x2 + y2 <= radius2

This generalises to higer dimensions as follows.

x12 + x22 + ... xn2 <= radius2
=end

def in_sphere?(coords, radius)
  location_sum = 0
  coords.each{|location| location_sum += location * location}
  location_sum <= radius * radius
end

p in_sphere?([0.5, 0.5], 1) == true
