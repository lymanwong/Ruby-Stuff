class Transformer
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

  def transform
    return @name + ", transform...err ah oh oh uh."
  end
end

class Autobot < Transformer
  def name
    "My name is " + super + " and I'm an Autobot."
  end
end

class Decepticon < Transformer
  def name
    "My name is " + super + " and I'm a Decepticon."
  end
end

transformer1 = Autobot.new("Optimus Prime")
p transformer1.name
p transformer1.transform

transformer2 = Decepticon.new("Megatron")
p transformer2.name
p transformer2.transform
