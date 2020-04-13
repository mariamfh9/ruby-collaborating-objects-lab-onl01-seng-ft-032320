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
     file.delete_suffix(".mp3")
    song = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end