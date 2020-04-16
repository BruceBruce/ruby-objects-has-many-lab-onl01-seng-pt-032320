class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end
