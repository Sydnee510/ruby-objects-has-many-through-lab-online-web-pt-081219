class Artist 
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name 
    @@all << self
  end 
  def self.all 
    @@all 
  end
  def new_song(name, genre) 
    Song.new(name, self, genre)
    # song = Song.new(name)
    # new_song(song)
    # @songs << song
    #song.artist = self
    # Artist.new(@name)
      @songs << name
      name.artist = self
  end 
  def genres                      
    self.songs.collect do |song|    
      song.genre
    end
  end
  def songs
    #@songs
    Song.all.select {|song| song.artist == self}
  end
end 