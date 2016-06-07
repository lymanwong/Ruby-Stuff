=begin
	
The autocomplete function will take in an input string and a dictionary array and return the values from the dictionary that start with the input string. If there are more than 5 matches, restrict your output to the first 5 results. If there are no matches, return an empty array.

Example:

For this example, the dictionary will always be a valid array of strings. Please return all results in the order given in the dictionary, even if they're not always alphabetical. The search should NOT be case sensitive, but the case of the word should be preserved when it's returned.

For example, "Apple" and "airport" would both return for an input of 'a'. However, they should return as "Apple" and "airport" in their original cases.

Any input that is NOT a letter should be treated as if it is not there. For example, an input of "$%^" should be treated as "" and an input of "ab*&1cd" should be treated as "abcd".

=end

dictionary = [ 'abnormal',
  'arm-wrestling',
  'absolute',
  'airplane',
  'airport',
  'amazing',
  'apple',
  'ball' ]

dictionary2 = ['Nopesville',
	'Green',
	'Narnia'
]

# def autocomplete(input, dictionary)
#   words = Array.new
#   newinput = (input.gsub(/[^a-zA-Z]/, '')).downcase
#   dictionary.each do |word|
#   	word = (word.gsub(/[^a-zA-Z]/, ''))
#   	if word[0,newinput.length].downcase == newinput[0,newinput.length]
#   		words << word
#   	end
#   end
#   return words[0,5]
# end

# def autocomplete(input, dictionary)
#   words = Array.new
#   newInput = (input.gsub(/[^a-zA-Z]/, '')).downcase
#   dictionary.each do |word|
#     newWord = (word.gsub(/[^a-zA-Z]/, ''))
#     if newWord[0,newInput.length].downcase == newInput[0,newInput.length]
#       words << word
#     end
#   end
#   return words[0,5]
# end

def autocomplete(input, dictionary)
  words = Array.new
  dictionary.each do |word|
    if (word.gsub(/[^a-zA-Z]/, '')).downcase.start_with? (input.gsub(/[^a-zA-Z]/, '')).downcase
      words << word
    end
  end
  return words.first(5)
end

p autocomplete('ai', dictionary) 
# #['airplane','airport']
p autocomplete('a', dictionary)
# ['abnormal','arm-wrestling','absolute','airplane','airport']

p autocomplete('n~!@\#$%^&*()_+1234567890ope', dictionary2)
#['Nopesville']