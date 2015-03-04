loop do
  p "What's your favorite food?"
  food = gets.strip
  if food.empty?
    break
  elsif food == "cabbage" || food == "durian"
    p "Yuck, I hate #{food}!"
  else
    p "Yum, I love #{food}!"
  end
end
