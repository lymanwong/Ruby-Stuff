=begin

sum_of_n (or SequenceSum.sumOfN in Java, SequenceSum.SumOfN in C#) takes an integer n and returns a List (an Array in Java/C#) of length abs(n) + 1. The List/Array contains the numbers in the arithmetic series produced by taking the sum of the consecutive integer numbers from 0 to n inclusive.

n can also be 0 or a negative value.
Wikipedia reference for abs value is available here.

Example:

5 -> [0, 1, 3, 6, 10, 15]

-5 -> [0, -1, -3, -6, -10, -15]

7 -> [0, 1, 3, 6, 10, 15, 21, 28] 
	
=end

def sum_of_n(n)
  #your code here
end

p sum_of_n(3) # [0, 1, 3, 6]
p sum_of_n(-4) # [0, -1, -3, -6, -10]
p sum_of_n(1) # [0, 1]
p sum_of_n(0) # [0]
p sum_of_n(10) # [0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55]