total = 0
loop do
  p "Enter a number"
  num = gets.strip
  total += num.to_i
  p "Total: " + total.to_s
end
