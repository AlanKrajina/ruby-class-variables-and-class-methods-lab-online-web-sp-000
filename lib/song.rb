class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  
  def self.genres
    @@genres.uniq
  end  
  
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.group_by { |v| v }.transform_values(&:size)
  end
  
  def self.artist_count
    @@artists.group_by { |v| v }.transform_values(&:size)
  end
  
=begin
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end  
=end  
  
end






