#Using catch with a block
#The catch block with the :finish symbol as an argument will immediately terminate (and move on to any code after that block) if throw is called withing the :finish symbol.
catch(:finish) do
  100.times do
    x = rand(100)
    throw :finish if x == 23
  end

puts "Generated 100 random numbers without generating 23!"

end

#========================

#Using throw with a block
#Catch and throw don't have to be directly in the same scope. throw works from methods called from within a catch block.
#Works the same as above. If throw can't find a code block using :finish in it's current scope, it jumps back up the stack until it can.
def generate_random_number_except_55
  x=rand(100)
  throw :finish if x==55
end

catch(:finish) do
  100.times {generate_random_number_except_55}
  puts "Generated 100 random numbers without generating 55!"
end
