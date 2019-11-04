require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
