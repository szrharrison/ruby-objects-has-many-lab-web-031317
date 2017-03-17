require 'pry'
class Song
  def initialize( title )
    @name = title
  end
  attr_accessor :artist, :name

  def artist_name
    artist = self.artist
    if artist
      artist_name = artist.name
    end
  end
end
