def echo(word)
  return (word)
end

def shout(word)
  return (word).upcase
end

def repeat(word, num=2)
  return repeated = ((word + " ") * num)[0..-2]
end

def start_of_word(word,num)
  return word[0...num]
end

def first_word(string)
  space = string.index(" ")
  return string[0...space]
end

def titleize(word)
  # return word_array = word.split(" ").map!{|x| x.capitalize!}.join(" ")
  word_array = word.split(" ")
  word_array.each do |word|
    if word == "and" || word == "the" || word == "over"
      next
    else
      word.capitalize!
    end
  end
  word_array[0].capitalize!
  return word_array.join(" ")
end

# titleize("apple")
titleize("apples and oranges")
