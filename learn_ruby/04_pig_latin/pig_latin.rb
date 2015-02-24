def translate(string)
  word = string.split("")
  first_single_word = word[0].split(" ")
  second_single_word = word[1].split(" ")
  third_single_word = word[3].split(" ")
  ending = "ay"
  vowels = ["a","e","i","o","u"]
  words = string.split(" ")
  first_word = ""
  second_word = ""
  new_string = []
  if words.count > 1
    words.each do |mulword|
      if (mulword[0] == "a" || mulword[0] == "e" || mulword[0] == "i" || mulword[0] == "o" || mulword[0] == "u")
      # if first_mul_word.any?{|x| vowels.include?(x)}
      first_word = mulword + ending
      new_string << first_word
    else
      second_word = mulword[1..-1] + mulword[0] + "ay"
      new_string << second_word
    end
  end
  return new_string.join(" ")
else
  if first_single_word.any?{|x| vowels.include?(x)}
    return string + ending
  elsif word[0] == "q"
    return (word[2..-1] + word[0..1]).join("") + "ay"
  elsif second_single_word.any?{|x| vowels.include?(x)}
    return (word[1..-1] + word[0...1]).join("") + "ay"
  elsif third_single_word.any?{|x| vowels.include?(x)}
    return (word[3..-1] + word[0..2]).join("") + "ay"
  else
    return (word[2..-1] + word[0..1]).join("") + "ay"
  end
end
end
