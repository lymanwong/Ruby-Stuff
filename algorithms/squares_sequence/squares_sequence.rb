=begin
Create a function squares(x,n) that starts with a number (x) and returns an array of length (n) with squares of the previous number. If n is negative or zero, return an empty array/list.

Examples
squares(2,5)=[2,4,16,256,65536]
squares(3,3)=[3,9,81]
=end

def squares(x,n)
  num = x
  array = []
  if n <= 0
    return array
  else
    array << x
    while array.length < n
      num = num * num
      array << num
    end
  end
  print array
end

squares(2,5)==[2,4,16,256,65536]
squares(3,3)==[3,9,81]
