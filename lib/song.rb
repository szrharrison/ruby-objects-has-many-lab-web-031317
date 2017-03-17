require 'pry'
class Song
  def initialize( title )
    @name = title
  end
  attr_accessor :artist, :name

  def artist_name
    if self.artist
      self.artist.name
    end
  end
end
