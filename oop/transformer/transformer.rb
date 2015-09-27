class Transformer
  def initialize(name)
    @name = name
    if defined? (@@number_of_transformers)
      @@number_of_transformers += 1
    else
      @@number_of_transformers = 1
    end
  end

  def name
    return @name
  end

  def transform
    return @name + ", transform...err ah oh oh uh."
  end

  def Transformer.count
    "You've created " + @@number_of_transformers.to_s + " Transformers."
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

p Transformer.count
