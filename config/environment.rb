require_relative '../spec/spec_helper.rb'
require 'bundler'
require 'pry'
Bundler.require

module Concerns
end

require_relative '../model/movie.rb'
require_relative '../model/actor.rb'
require_relative '../model/director.rb'
require_relative '../model/genre.rb'
# require_relative 'seed.rb'

# django = Movie.new('django')
# quentin = Director.new('quentin')
# jamie = Actor.new('jamie')
# western = Genre.new('western')

Pry.start
