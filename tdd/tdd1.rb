class String
  def titleize
    self.gsub(/(\A|\s)\w/){|letter| letter.upcase}
  end
end

#=====Assertions========

# puts "this is a test".titleize
# raise "Fail 1" unless "this is a test".titleize == "This Is A Test" #=># Fail 1 (RuntimeError)

# puts "another test 1234".titleize
# raise "Fail 2" unless "another test 1234".titleize == "Another Test 1234" #=> Fail 2 (RuntimeError)

# puts "We're testing titleize".titleize
# raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize" #=> Fail 3 (RuntimeError)

#=====Unit testing========
require "test/unit"

class TestTitleize < Test::Unit::TestCase
  def test_basic
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_equal("Another Test 1234", "another test 1234".titleize)
    assert_equal("We're Testing", "We're testing".titleize)

    #failing test
    assert_equal("Let's make this test fail", "kangaroo".titleize) #=> 1 tests, 4 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications 0% passed
  end
end
