require 'pry'


class Song
    attr_accessor :name, :artist, :genre
        @@count = 0
        @@artists = []
        @@genres = []
    def initialize(name, artist, genre)
        @name=name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists<<artist
        @@genres<<genre

    end
   
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

   def self.genre_count 
     @@genres.tally 
    end
  
    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|owner| artist_count[owner] += 1}
        artist_count
    end
end
# binding.pry