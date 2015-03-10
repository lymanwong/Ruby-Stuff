def substrings(string, dictionary)
  substring_count = Hash.new 0
  dictionary.each do |word|
    if string.include? word
      substring_count[word] += 1
    end
  end
  return substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary) == {"below"=>1, "low"=>1}
