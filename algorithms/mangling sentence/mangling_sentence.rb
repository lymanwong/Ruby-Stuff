=begin
Input
The input will be a single line that is exactly one English sentence, starting with a capital leter and ending with a period

Output
The output will be the same sentence with all the letters in each word sorted.  Words that were captialized in the input needs to be capitalized properly in the output, and any punctuation should remain at the same place as it started. For example, 'Dailyprogrammer' s/b 'Aadegilmmoprrry'  Only spaces spearate words, not any other kind of punctuation.
=end

def mangling_sentence(sentence)
  #make sentence into an array of strings
  new_word = []
  arr = sentence.downcase.split(' ')
  #iterate over each word
  arr.each do |word|
  #split the word into letters and add it to the array sorted
    new_word << word.split('').sort.join('')
  end
  new_word.join(' ')
end

p mangling_sentence('hello world') == 'ehllo dlorw'

