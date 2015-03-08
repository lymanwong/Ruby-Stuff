def unique_in_order(iterable)
  unique = []
  letter = 0
  if iterable.instance_of? String
    array = iterable.split("")
    array.each do |item|
      if item != unique.last
        unique.push item
      end
    end
  else
    iterable.each do |item|
      if item != unique.last
        unique.push item
      end
    end
  end
  return unique
end

p unique_in_order('AAAABBBCCDAABBB') == ['A','B','C','D','A','B']
p unique_in_order('ABBCcAD') == ['A','B','C','c','A','D']
p unique_in_order([1,2,2,3,3]) == [1,2,3]
