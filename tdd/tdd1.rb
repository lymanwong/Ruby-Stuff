class String
  def titleize
    self.gsub(/(\A|\s)\w/){|letter| letter.upcase}
  end
end

puts "this is a test".titleize
raise "Fail 1" unless "this is a test".titleize == "This Is A Test" #=># Fail 1 (RuntimeError)

puts "another test 1234".titleize
raise "Fail 2" unless "another test 1234".titleize == "Another Test 1234" #=> Fail 2 (RuntimeError)

puts "We're testing titleize".titleize
raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize" #=> Fail 3 (RuntimeError)

