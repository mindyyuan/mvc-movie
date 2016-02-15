require_relative '../spec/spec_helper.rb'

class Genre
    # extend Findable
attr_accessor
attr_reader :name, :movies
@@all = []

  def initialize(name)
    @name = name
    @movies = []
    @@all << self
  end

  def add_movie(title)
    self.movies << title
  end

end
