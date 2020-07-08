class Song
  attr_accessor :name, :artist_name
  
  
  @@all = []
 
  def self.create
    song = self.new
    @@all << song
    return song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.new_by_name(song_name)
     s = Song.new
     s.name = song_name
     s
  end
  
  def self.create_by_name(song_name)
     s = Song.new
     s.name = song_name
     s.save
     s
  end
  def self.find_by_name(song_name)
    @@all.find{|s| s.name == song_name}
  end
  
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) == nil
     self.create_by_name(song_name)
   else 
     self.find_by_name(song_name)
   end
  end
  
  def self.alphabetical
    @@all.sort { |a, b| a.name <=> b.name }
  end 
  def self.new_from_filename(file_name)
    file_name[".mp3"] = ""
    song_array = file_name.split(" - ")
     s = Song.new
     s.name = song_array[1].to_s
     s.artist_name = song_array[0].to_s
     s.save
     s
  end
  def self.new_from_filename(file_name)
    file_name[".mp3"] = ""
    song_array = file_name.split(" - ")
     s = Song.new
     s.name = song_array[1].to_s
     s.artist_name = song_array[0].to_s
     s.save
     s
  end
end
