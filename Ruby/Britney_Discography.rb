class Song 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
end

class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def discography
    @songs.map do |song|
      song.name
    end
  end
  
end

toxic = Song.new("Toxic")
toxic 

britney = Artist.new("Britney Spears")
britney.name

britney.add_song(toxic)
britney.discography

lucky = Song.new("Lucky")
britney.add_song(lucky)
baby = Song.new("(Hit Me Baby) One More Time")
britney.add_song(baby)
oops = Song.new("Oops I Did it Again")
britney.add_song(oops)
womanizer = Song.new("Womanizer")
britney.add_song(womanizer)
crazy = Song.new("Crazy")
britney.add_song(crazy)
stronger = Song.new("Stronger")
britney.add_song(stronger)

britney.discography



