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
    puts @@genres.uniq!
  end

  def self.artists
    puts "#{@@artists.uniq}"
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre]
    end
    genre_hash.uniq!
    @@genres.each do |genre_count|
      if genre_hash[genre_count] = genre_count
        genre_hash[genre_count] += 1
      end
  end

end
