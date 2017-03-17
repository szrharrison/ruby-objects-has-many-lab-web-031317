require 'pry'
class Artist
  @@all = []
  @@song_count
  def self.all
    @@all
  end
  def initialize( name )
    @name = name
    @songs = []
    @@all << self
  end
  attr_accessor :name
  attr_reader :songs

  def add_song( song )
    @songs << song
    song.artist = self
  end
  def add_song_by_name( title )
    song = Song.new( title )
    self.add_song( song )
  end
  def song_count
    self.songs.length
  end
  def self.song_count
    @@song_count = self.all.reduce(0) do |total, artist|
      total + artist.song_count
    end
  end

end
