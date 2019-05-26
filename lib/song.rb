require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_count_hash = Hash.new(0)
    @@genres.each {|genre| genre_count_hash[genre] += 1}
  end
  
  def self.artist_count
    @@artists.uniq.map{|artist| [artist, @@artists.count(artist)]}.to_h
  end
end