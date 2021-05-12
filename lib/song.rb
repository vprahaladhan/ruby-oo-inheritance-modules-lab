require_relative './concerns/findable.rb'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require 'pry'

class Song
  include Paramable
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  # def self.find_by_name(name)
  #   @@all.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end