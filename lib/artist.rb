require_relative './concerns/findable.rb'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require 'pry'

class Artist
  include Paramable
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   self.all.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end