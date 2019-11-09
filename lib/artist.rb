require "pry" 
class Artist 

  attr_accessor :name 
  @@song_count = 0 
  @@all = []
  
  def initialize(name)
    @name = name
    #@songs = []
    @@all << self 
  end 
  
  def add_song(song)
   # @songs << song
    song.artist = self
    @@song_count += 1 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
   # @songs << song
    song.artist = self
    @@song_count += 1 
    #binding.pry
  end
  
  def songs
   # @songs
   Song.all.select {|song| song.artist == self}
    #binding.pry 
  end
  
  def self.song_count
    #@@song_count
    Song.all.count 
  end
  
end