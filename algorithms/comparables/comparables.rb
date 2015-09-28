class Song
  include Comparable

  attr_accessor :length
  def <=>(other)
    @length <=> other.length
  end

  def initialize(song_name,length)
    @song_name = song_name
    @length = length
  end
end

a = Song.new("Welcome to Paradise", 143)
b = Song.new("Bohemian Rapsody", 544)
c = Song.new("Friends", 60)

#comparing song length
p a < b
p b >= c
p c > a
a.between?(c,b)
