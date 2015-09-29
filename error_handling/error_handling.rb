begin
  puts 10/0
rescue => e
  puts "\nYou broke the internets!"
  puts e.class
end

#You broke the internets!
#ZeroDivisionError

#===============

class Person
  def initialize(name)
    raise ArgumentError, "\nNo name present, sucka!\n" if name.empty?
  end
end

Joe = Person.new('') #notice the Argument error message

