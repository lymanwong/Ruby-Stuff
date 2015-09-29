class Person
  def initialize(name)
    set_name(name)
  end

  def name
    @first_name + ' ' + @last_name
  end

  private

  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end

  def set_first_name(name)
    @first_name = name
  end

  def set_last_name(name)
    @last_name = name
  end
end

p = Person.new("Jason Biggs")
p p.name

#private (line 10) will prevent a user from
#accessing and then changing the last name
p.set_last_name("Smith")
p p.name
