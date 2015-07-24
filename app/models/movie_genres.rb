require_relative "../../config/application"
class MovieGenres < ActiveRecord::Base
  belongs_to :movie
  belongs_to :genre
end
