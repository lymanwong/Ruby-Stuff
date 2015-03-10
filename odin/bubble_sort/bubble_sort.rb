def bubble_sort(array)
  element1 = 0
  element2 = 0
  counter = 0
  while counter < array.length - 1
    if array[counter] > array[counter + 1]
      element1 = array[counter]
      element2 = array[counter + 1]
      array[counter] = element2
      array[counter + 1] = element1
      counter = 0
    else
      counter += 1
    end
  end
  return array
end

p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
