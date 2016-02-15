require_relative '../spec/spec_helper.rb'

class Actor
    # extend Findable
attr_accessor
attr_reader :name, :movies
@@all = []

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(title)
    self.movies << title
  end


end
