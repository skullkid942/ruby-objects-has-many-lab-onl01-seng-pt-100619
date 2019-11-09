class Author 
  @@post_count = 0 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(a_post)
    @posts << a_post
    a_post.author = self
    @@post_count += 1 
  end 
  
  def add_post_by_title(title)
    a_post = Post.new(title)
    @posts << a_post
    a_post.author = self
    @@post_count += 1 
  end
  
  def posts
    #@posts
    Post.all.select {|a_post| a_post.author == self}
  end 
  
  def self.post_count
    #@@post_count
    Post.all.count 
  end 

end