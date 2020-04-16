class Author

  attr_accessor :name, :posts

  @@post_count = 0 
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |post|
      post.author = self
    end
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    writer = Post.new(title)
    add_post(writer)
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
end