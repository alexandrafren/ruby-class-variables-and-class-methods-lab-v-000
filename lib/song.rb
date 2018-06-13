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
    clean_array = []
    @@genres.each do |genre|
      if !clean_array.include?(genre)
        clean_array << genre
      end
    end
    return clean_array
  end

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      if !artist_array.include?(artist)
        artist_array << artist
      end
    end
    return artist_array
  end

  def self.genre_count
    genre_hash = {}
    genre_array = self.genres.to_s.split(/\w\W/)
    genre_hash[genre_array] = 0
    #@@genres.each do |genre|
      #genre_hash[genre]
    #end
    return genre_hash
  end

end
