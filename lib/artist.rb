require 'pry'

# create class Artist 
class Artist 
# create initialize method w/argument (name)
  attr_accessor :name 
# create @@all = [] - class variable
  @@all = []
# create initialize method w/argument (name)
  def initialize(name)
    @name = name
  end 

# create class methods for:
    # - self.all
  def self.all 
    # - this method will return contents of @@all array
    @@all
  end 
    # - self.destroy_all 
  def self.destroy_all
    # - set @@all to an empty array
    @@all = []
  end

# create save instance method
  def save 
#  # - this method will add Song instances to the @@all array
    @@all << self 
  end 
# create self.create class method 
  def self.create(name)
  # - this will initialize a new song and save the song in the @@all array 
    artist = Artist.new(name)
    @@all << artist
    artist
  end 
end 