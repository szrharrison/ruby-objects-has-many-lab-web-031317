require 'pry'
class Author
  attr_accessor :name
  attr_reader :posts
  @@all = []
  @@post_count = 0
  def self.all
    @@all
  end
  def initialize( name )
    @name = name
    @posts = []
    @@all << self
    @@post_count += 1
  end

  def add_post( post )
    self.posts << post
    post.author = self
  end

  def add_post_by_title( title )
    post = Post.new( title )
    self.add_post( post )
  end

  def self.post_count
    @@post_count = self.all.reduce(0) do |total, author|
      total + author.posts.length
    end
  end
end
