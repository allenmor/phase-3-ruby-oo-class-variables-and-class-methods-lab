class Song


    attr_accessor :name, :artist, :genre


    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name =  name
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
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq.map

    end

    def self.genre_count 

        obj = {}
        @@genres.map do |el|
            obj[el] ? obj[el] += 1 : obj[el] = 1
        end
        obj
    end




    def self.artist_count
        obj = {}
        @@artists.map do |el|
            obj[el] ? obj[el] += 1 : obj[el] = 1
        end
        obj
    end











end


# attr_accessor :name, :artist, :genre

# @@count = 0
# @@artists = []
# @@genres = []
# @@uniArray
# def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@count += 1
#     @@artists << artist
#     @@genres << genre
# end

# def self.count
#     @@count
# end

# def self.artists
#     @@artists.uniq
# end

# def self.genres 
#     @@genres.uniq
# end

# def self.genre_count
#     map = {}
#     @@genres.each do |genre|
#         if map[genre]
#             map[genre] += 1
#         else
#             map[genre] = 1
#         end
#     end
#     map
# end
# def self.artist_count
#     map = {}
#     @@artists.each do |el|
#         if map[el]
#             map[el] += 1
#         else
#             map[el] = 1
#         end
#     end
#     map
# end
