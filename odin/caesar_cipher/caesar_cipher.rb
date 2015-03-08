def caesar_cipher(string, shift)
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  string_array = string.downcase.split("")
  translated = ''
  string_array.each do |word|
    word.split('').each do |letter|
      if alphabet.include? letter
        new_letter_location = alphabet.index(letter) + shift
        if new_letter_location < 26
          translated << alphabet[new_letter_location]
        else
          translated << alphabet[new_letter_location - 26]
        end
      else
        translated += letter
      end
    end
  end
  return translated.capitalize
end
p caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"
