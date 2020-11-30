class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists   
        @@artists.uniq #class method returns unique array of artist
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

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

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me_baby_one_more = Song.new("hit me baby one more time", "Brittany Spears", "pop")
lucifer = Song.new("Lucifer", "Jay-Z", "rap")
# p ninety_nine_problems.name
# p ninety_nine_problems.artist
# p ninety_nine_problems.genre
# p Song.artists
p Song.genre_count
# p Song.artist_count 


#def self.genre_count
        #returns a hash in which keys = names of each genre
        #Each genre name key should point to a value that is the number of songs that have that genre
        #   genre_count = {} => empty hash, the starting poing for our hash and 
        #                   will be the key/value of the stored genre and number of songs
        #   @@genre #references the stored genres in the array
        #   .each  #will iterate over each genre if a genre is true
        #           if it doesn't match any genre in the hash it moves
        #           on to the next line and add 1 to a new key
        #   else if a genre is false it matches a genre it will skip
        #   the next line and move on to the next line and increment
        #   the value by 1 in the matching key
        #   return genre_count to get the entire hash key/value
    
