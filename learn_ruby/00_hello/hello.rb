def hello
  "Hello!"
end


def greet(name)
  enemies = ["Lex Luthor", "Darth Vader", "Boba Fett"]
  if enemies.include? name
    "Go away, #{name}!"
  else
    "Hello, #{name}!"
  end
end

# p greet("Darth Vader") == "Go away, Darth Vader!"
# p greet("Han Solo") == "Hello, Han Solo!"

# puts "What is your name?"
# name = gets.strip
# puts "Hello, " + name + "!"

ARGV.each do |arg|
  p "Hello, #{arg}!"
end

