class Genre
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.each {|s| s.genre == self}
    end

    def artists
        songs.map {|s| s.artist}
    end
    
end
