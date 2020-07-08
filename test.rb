class Song
  attr_accessor :name, :artist_name
   @@all = []
   
  def self.all
    @all
  end
  
  def self.create
    @@all << self.new
    return self.new
  end
  def self.include?
    @all.include?(anyting)
  end
end
song = Song.create
puts Song.include?(song)