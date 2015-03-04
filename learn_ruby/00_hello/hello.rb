def hello
  "Hello!"
end


def greet(name)
  if (name == "Darth") || name == "Voldemort" || name == "Lex Luthor"
    "Go away, #{name}!"
  else
    "Hello, #{name}!"
  end
end

# puts "What is your name?"
# name = gets.strip
# puts "Hello, " + name + "!"
