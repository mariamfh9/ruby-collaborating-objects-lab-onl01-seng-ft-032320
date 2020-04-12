require 'pry'
class Artist

  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end
  
  def self.all
    @@all 
  end
  
  
  def self.find_or_create_by_name(artist_name)
   if self.all.find(artist_name)
     self.all.detect { |artist| artist.name == name }
   else 
   artist = Artist.new(artist_name)
  artist.save
end 
    artist
    
  end




  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end