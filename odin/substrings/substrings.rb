def substrings(string, dictionary)
  word_count = Hash.new 0
  dictionary.each do |word|
    if string.include? word
      word_count[word] += 1
    end
  end
  return word_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# p substrings("below", dictionary) == {"below"=>1, "low"=>1}
