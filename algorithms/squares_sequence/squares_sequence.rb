=begin
Create a function squares(x,n) that starts with a number (x) and returns an array of length (n) with squares of the previous number. If n is negative or zero, return an empty array/list.

Examples
squares(2,5)=[2,4,16,256,65536]
squares(3,3)=[3,9,81]
=end

# def squares(x,n)
#   num = x
#   array = []
#   if n <= 0
#     return array
#   else
#     array << x
#     while array.length < n
#       num *= num
#       array << num
#     end
#   end
#   array
# end

def squares(x,n)
  if n<=0
    Array.new
  else
    array = Array.new(1,x)
    while array.length<n
      array << num = array[-1] * array[-1]
    end
  array
  end
end

p squares(2,0)==[]
p squares(3,-9)==[]
p squares(2,5)==[2,4,16,256,65536]
p squares(3,3)==[3,9,81]
p squares(2,5)==[2,4,16,256,65536]
p squares(3,3)==[3,9,81]
p squares(5,3)==[5,25,625]
p squares(10,4)==[10,100,10000,100000000]
