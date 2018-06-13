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
    genre_hash = self.genres
    genre_hash.[self.genres] = 0
  end

end
