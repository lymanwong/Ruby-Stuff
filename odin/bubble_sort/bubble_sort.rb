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


def bubble_sort_by(array)
  word_swap = true
  while word_swap do
    word_swap = false
    for num in 1...array.length
      if yield(array[num], array[num-1]) < 0
        array[num], array[num-1] = array[num-1], array[num]
        word_swap = true
      end
    end
  end
  p array
end


bubble_sort_by(["hi","hello","hey"]) do |right,left|
  right.length - left.length
end
