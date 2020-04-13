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
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end
    
    #if !new(artist_name)
     # new.(artist_name)
    #end 
   #if self.all.find(artist_name)
    # self.all.detect { |artist| artist.name == name }
  # else
   #artist = Artist.new(artist_name)
    #artist.save
    #artist
  #end 
   # artist
    





  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end