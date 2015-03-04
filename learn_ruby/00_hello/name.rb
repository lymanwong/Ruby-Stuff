puts "What is your first name?"
first_name = gets.strip.downcase.capitalize
puts "What is your last name?"
last_name = gets.chomp.downcase.capitalize
name_length = first_name.length + last_name.length
puts "Hello, #{first_name} #{last_name}."
puts "Your name is #{name_length} characters long."
