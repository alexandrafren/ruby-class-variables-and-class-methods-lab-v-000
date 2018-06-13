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
    puts @@genres.uniq
  end

  def self.artists
    puts "#{@@artists.uniq}"
  end

  def self.genre_count
    genre_hash = {}
    if genre_hash.include?(genre)
      genre_hash[genre] += 1
    else
      genre_hash = genre
      genre_hash[genre] += 1
    end
    return genre_hash
  end

end
