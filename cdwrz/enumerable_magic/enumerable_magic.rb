def zip(first, second)
  counter = 0
  zipped_array = []
  while counter <= first.length - 1
    zipped_array.push first[counter]
    zipped_array.push second[counter]
    counter += 1
  end
  return zipped_array
end

p zip(['a', 'c', 'e'],['b', 'd', 'f']) == ['a','b','c','d','e','f']
