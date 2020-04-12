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
    self.find(artist_name) ? self.find(artist_name) : self.create(artist_name)
    #self.all.find {|artist| artist.artist_name == artist_name }
    #self.new(artist_name).tap {|artist| artist.save}
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end



  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end