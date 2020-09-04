+require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    newsong = Song.new
    save
    return(newsong)
  end
  
  def self.new_by_name(name)
    newsong = Song.create()
    newsong.name = name
    binding.pry
    save
    return(newsong)
  end 
  
  def  self.new_by_name(name)
    newsong = self.Song.create(name)
    newsong.name = Song
    return(newsong)
  end
  
  filter_parameter_logging
end #class end
