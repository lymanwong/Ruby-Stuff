[1,2,3,4,5].each{|number| p number}

#================

my_array = %w{this is a test of the longest word check blahblahblah}
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length <word.length
end

p longest_word #=> blahblahblah

#=================

my_second_array = %w{10 56 2 49 101 0 99}
highest_number = 0
my_second_array.each do |number|
  number = number.to_i
  highest_number = number if number > highest_number
end

p highest_number #=> 101

#=======Collect=========

p [1,2,3,4,5].collect{|i| i.to_s + ' mississippi'} #=> ["1 mississippi", "2 mississippi", "3 mississippi", "4 mississippi"]

#========Detect=========

p [1,2,3,4,5].detect{ |i| i.between?(2,3)}

#=>2

#========Select==============

p [1,2,3,4,5,6].select{ |i| i.between?(2,4)}

#=>[2,3,4]
