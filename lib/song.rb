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
    #binding.pry
    genre_count = {}
    genre_arr = []
    @@genres.each do |genre| 
      genre_arr[genre]
    end
    @@genres[@genre] ||= []
    genre_count <<
    .count
  end
  
  def self.artist_count
    
  end
end