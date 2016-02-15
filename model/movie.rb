require_relative '../spec/spec_helper.rb'
class Movie
    # extend Findable
attr_accessor :rating, :director, :actors, :genres
attr_reader :title
@@all = []

  def initialize(title, rating = 5.0)
    @title = title
    @rating = rating
    @actors = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def add_director(director)
    self.director = director
    director.add_movie(self.title)
  end

  def add_actor(actor)
    self.actors << actor
    actor.add_movie(self.title)
  end

  def add_genre(genre)
    self.genres << genre
    genre.add_movie(self.title)
  end

  def self.find_by_name(title)
    self.all.find {|movie| movie.title == title}
  end
end
