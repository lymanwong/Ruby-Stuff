def number lines
  counter = 1
  lines.each do |line|
    line.prepend(counter.to_s + ": ")
    counter += 1
  end
end


p number(["a", "b", "c"]) == (["1: a", "2: b", "3: c"])
