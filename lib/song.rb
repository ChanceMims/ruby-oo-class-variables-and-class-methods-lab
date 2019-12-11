require 'pry'
class Song
    attr_accessor :name, :genre, :artist
    
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        #binding.pry
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
        @@genres.each do |memo|
            @@genre_count[memo] = 0 if !@@genre_count[memo]
            @@genre_count[memo] += 1
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |memo|
            @@artist_count[memo] = 0 if !@@artist_count[memo]
            @@artist_count[memo] += 1
        end
        @@artist_count
    end
end