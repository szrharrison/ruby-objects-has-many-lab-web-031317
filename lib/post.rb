require 'pry'
class Post
  def initialize( title )
    @title = title
  end
  attr_accessor :author, :title

  def author_name
    author = self.author
    if author
      author_name = author.name
    end
  end
end
