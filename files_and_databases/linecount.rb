#put the number of lines in the textfile
# p readlines.length

#=====open==========

#puts each line of the textfile, but can accept a code block and when it's done reading, it will close automatically
# File.open("textfile.txt").each {|line| p line}

#Takes the file and passes the file handle into the code block as f. f.gets takes the first line and prints it to the screen
# File.open("textfile.txt") do |f|
#   puts f.gets #=> Summary:
# end

#========new========

#put each line of the textfile as well. Returns a file object.
# File.new("textfile.txt","r").each {|line| p line}

# f = File.new("textfile.txt", "r")
# puts f.gets
# f.close

#=====================

#print each line of the file
# File.open("text.txt").each(',') {|line| p line}

#=====================

#print 2 lines of the file
# File.open("textfile.txt") do |f|
#   2.times {p f.gets}
# end

#======================

#print 2 letters of the first line with a noniterative form. Same as each_byte
File.open("text.txt") do |f|
  2.times {p f.getc}
end

#========Position============

