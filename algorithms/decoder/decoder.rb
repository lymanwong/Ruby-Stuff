=begin
The goal of this app is to translate a string that was coded with rot13. The simple Caesar-cypher encryption that replaces each English letter with the one 13 places forward or back along the alphabet, so that "The butler did it" becomes "Gur ohgyre qvq vg" Most Usenet news reading and posting programs include a rot13 feature. It is used to enclose the text in a sealed wrapper that the reader must choose to open - e.g. for posting things that might offend some readers, or spoilers. A major advantage of rot13 over rot(N) for other N is that it is self-inverse, so the same code can be used for encoding and decoding.
=end

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
end

p decoder("Fraq hf gur pbqr lbh hfrq gb qrpbqr guvf zrffntr") == "Send us the code you used to decode this message"
p decoder("Gur ohgyre qvq vg") == "The butler did it"
