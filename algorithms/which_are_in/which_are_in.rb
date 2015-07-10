# Given two arrays of strings a1 and a2 return a sorted array in lexicographical order and without duplicates of the strings of a1 which are substrings of strings of a2.
# Example: a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns ["arp", "live", "strong"]
# a1 = ["tarp", "mice", "bull"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns []
# Note: Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.

def in_array(arr1,arr2)
  collection = []
  arr1.each do |first|
    arr2.each do |second|
      if second.include? first
        collection << first
      end
    end
  end
  p collection.uniq
end


# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
a1 = ["tarp", "mice", "bull"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

in_array(a1,a2)
