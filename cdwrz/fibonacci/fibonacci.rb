def fibonacci(max)
  fib_array = [0,1]
  counter = 1
  sum = 0
  if max == 0
    fib_array = [0]
  else
    while sum < max
      sum = fib_array[counter] + fib_array[counter - 1]
      counter += 1
      if sum <= max
        fib_array.push sum
      end
    end
  end
  return fib_array
end


p fibonacci(20) == [0,1,1,2,3,5,8,13]
p fibonacci(23) == [0,1,1,2,3,5,8,13,21]
p fibonacci(89) == [0,1,1,2,3,5,8,13,21,34,55,89]
