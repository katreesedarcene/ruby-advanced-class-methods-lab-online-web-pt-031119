require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
   def self.create
    song = self.new
    @@all << song
    song
  end
  def self.new_by_name(song_with_name)
     song = self.new
     song.name = song_with_name
     @@all << song 
     song
   end
   def self.create_by_name(song_with_name)
     song = self.new
     song.name = song_with_name
     @@all << song 
     song
   end
   def self.find_by_name(song_with_name)
     self.all.detect {|x| x.name == song_with_name }
 end
 def self.find_or_create_by_name(song_with_name)
   self.find_by_name(song_with_name) || self.create_by_name(song_with_name)
 end
 def self.alphabetical
     self.all.sort_by!{|x| x.name}
 end
 def self.new_from_filename(filename)
   parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.new
    song.name = song_name
    song.artist_name = artist_name
    song
 end
 def self.create_from_filename(filename)
   
 end

end
