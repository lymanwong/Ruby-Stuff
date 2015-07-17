# def decoder(message)
#   sub_word_array = []
#   phrase = []
#   word_array = message.split(" ")
#   #["Fraq", "hf", "gur", "pbqr", "lbh", "hfrq", "gb", "qrpbqr", "guvf", "zrffntr"]
#   word_array.each do |word|
#     sub_word_array << word.downcase.split("")
#   #   #[["F", "r", "a", "q"], ["h", "f"], ["g", "u", "r"], ["p", "b", "q", "r"], ["l", "b", "h"], ["h", "f", "r", "q"], ["g", "b"], ["q", "r", "p", "b", "q", "r"], ["g", "u", "v", "f"], ["z", "r", "f", "f", "n", "t", "r"]]
#   end
#   sub_word_array.each do |word|
#     word.each do |letter|
#       if letter.ord + 13 < 122
#         letter.gsub!(letter, (letter.ord + 13).chr)
#       else
#         letter.gsub!(letter, (letter.ord-13).chr)
#       end
#     end
#   end
#   sub_word_array.each do |word|
#     phrase << word.join('')
#   end
#   p phrase.join(' ').capitalize
# end

#Refactored

def decoder(message)
  translated = message
  translated.gsub!(/\w/).each do |letter|
    if letter.ord + 13 < 122
        letter.gsub!(letter, (letter.ord + 13).chr)
    else
        letter.gsub!(letter, (letter.ord-13).chr)
    end
  end
  p translated
end

decoder("Fraq hf gur pbqr lbh hfrq gb qrpbqr guvf zrffntr")
#"Send us the code you used to decode this message"
