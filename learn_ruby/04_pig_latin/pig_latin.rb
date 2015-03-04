def translate(regular_word)
  translated_word = []
  ending = "ay"
  split_words = regular_word.split(" ")
  split_words.each do |word|
    first_letter = word[0]
    first_two = word[0..1]
    first_three = word[0..2]
    if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
      translated_word << word + ending
    elsif first_two == "ch"
      translated_word << word[2..-1] + first_two + ending
    elsif first_two == "br"
      translated_word << word[2..-1] + first_two + ending
    elsif first_three == "thr"
      translated_word << word[3..-1] + first_three + ending
    elsif first_two == "th"
      translated_word << word[2..-1] + first_two + ending
    elsif first_two == "qu"
      translated_word << word[2..-1] + first_two + ending
    elsif first_three == "sch"
      translated_word << word[3..-1] + first_three + ending
    elsif first_three == "squ"
      translated_word << word[3..-1] + first_three + ending
    else
      translated_word << word[1..-1] + first_letter + ending
    end
  end
  return translated_word.join(" ")
end

# p translate("apple") == "appleay"
# p translate("banana") == "ananabay"
# p translate("cherry") == "errychay"
# p translate("eat pie") == "eatay iepay"
# p translate("three") == "eethray"
# p translate("school") == "oolschay"
# p translate("square") == "aresquay"
# p translate("quiet") == "ietquay"
# p translate("the quick brown fox") == "ethay ickquay ownbray oxfay"
