def add (num1,num2)
  return num1 + num2
end

def subtract(num1,num2)
  return num1 - num2
end

def sum(array)
  total = 0
  array.each do |num|
    total += num
  end
  return total
end

def multiply (array)
  total = 1
  array.each do |num|
    total *= num
  end
  return total
end

def power(base,exponent)
  return base**exponent
end

def factorial(num)
  array = [1,2,3,4,5,6,7,8,9,10]
  mul = array[0...num]
  factorial = 1
  mul.each do |x|
    factorial *= x
  end
  return factorial
end

factorial(6)
