require 'pry'
class Song


  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count +=1
      @@genres << genre
      @@artists << artist
    end

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
      return @@genres.uniq
    end

    def self.genre_count
      hash = {}
       @@genres.each do |key|
         if hash[key].nil?
           hash[key] = 1
         else
           hash[key] +=1
         end
       end
       return hash
    end

    def self.artist_count
      hash = {}
       @@artists.each do |key|
         if hash[key].nil?
           hash[key] = 1
         else
           hash[key] +=1
         end
       end
       return hash
    end

end
