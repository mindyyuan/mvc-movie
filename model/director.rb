require_relative '../spec/spec_helper.rb'
# require_relative 'movie.rb'

class Director
      # extend Findable
attr_accessor
attr_reader :name, :movies, :genres
@@all = []

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(title)
    self.movies << title
  end

  def genres
    self.movies.map do |title|
      genre_objects = Movie.find_by_name(title).genres
      genre_objects.map {|genre_object| genre_object.name}
    end.flatten.uniq
  end

end
