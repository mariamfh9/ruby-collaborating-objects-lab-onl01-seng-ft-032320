class Song
  @@all = [] 
  
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 

   def self.new_by_filename(file)
    artist_name, song_name, extra = file.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end