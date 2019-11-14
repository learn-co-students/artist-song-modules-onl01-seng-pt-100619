require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  

  attr_accessor :name
  attr_reader :artist
  def initialize
    @songs = []
    self.class.all << self
  end
  
  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
end