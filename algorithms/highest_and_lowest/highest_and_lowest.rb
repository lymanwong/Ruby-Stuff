#In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
#All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

def high_and_low(string)
  nums=[]
  arr = string.split(" ")
  arr.each do |num|
    nums<<num.to_i
  end
   nums.max.to_s + " " + nums.min.to_s
end

p (high_and_low("1 -1") == "1 -1")
p (high_and_low("1 1") == "1 1")
p (high_and_low("-1 -1") == "-1 -1")
p (high_and_low("1 -1 0") == "1 -1")
p (high_and_low("1 1 0") == "1 0")
p (high_and_low("-1 -1 0") == "0 -1")
p (high_and_low("42") == "42 42")
p high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6") == "542 -214"
