=begin
Given a string whicn only contains lowercase. You need to delete the repeated letters leaving only one, and try to make the lexicograpical order of new string is smallest

bcabc => abc
cbacdcbc => acdb
=end

class Dedupe
  def initialize(string)
    @string = string.split()
    @counts = Hash.new 0
  end

  def identify_repeats(string)
    @string = string.split('').each do |letter|
      @counts[letter] += 1
    end
     @counts
  end

  def delete_repeats(counts)
    @string.each do |letter|
      while @counts[letter] > 1
        location = @string.index(letter)
        @string.delete_at(location)
        @counts[letter] -= 1
      end
    end
    @string.join('')
  end
end

a = Dedupe.new("bcabc")
a.identify_repeats("bcabc")
p a.delete_repeats(@counts) == 'abc'

#work in progress...
a = Dedupe.new("cbacdcbc")
a.identify_repeats("cbacdcbc")
p a.delete_repeats(@counts) == 'acdb'
