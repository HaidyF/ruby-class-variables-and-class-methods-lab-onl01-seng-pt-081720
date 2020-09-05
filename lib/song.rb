class Song
attr_accessor :name, :artist, :genre

@@song_count= 0
@@artists=[]
@@genres=[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@song_count +=1
  end

  def self.count
    @@song_count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genres_count
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

  def self.artists_count
    artists_count = {}
    @@artists_count.each |artists|
    if artists_count[artists]
      artists_count[artists] +=1
    else
      artists_count [artists] = 1
    end
  end
end

Song.count
Song.artists
Song.genres
