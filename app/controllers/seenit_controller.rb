require_relative "seenit_view.rb"
require_relative "../models/movie.rb"
require_relative "../models/genre.rb"
require_relative "../models/movie_genres.rb"

class SeenItController
  def initialize
    @seen_it_view = SeenItView.new
  end

  def run
    @seen_it_view.welcome
    @command = @seen_it_view.menu

  while @command != "X"
    case @command
    when "D"
      movies = Movie.all
      @seen_it_view.display_heading("All films:")
      movies.each do |movie|
        @seen_it_view.display(movie)
      end
      @command = @seen_it_view.menu
    when "S"
      movies = Movie.all
      @seen_it_view.display_heading("Seen films:")
      movies.each do |movie|
        if movie.status == true
          @seen_it_view.display(movie)
        end
      end
      @seen_it_view.display_footer
      @command = @seen_it_view.menu
    when "U"
      movies = Movie.all
      @seen_it_view.display_heading("Unseen films:")
      movies.each do |movie|
        if movie.status == false
          @seen_it_view.display(movie)
        end
      end
      @seen_it_view.display_footer
      @command = @seen_it_view.menu
    when "G"
      @seen_it_view.display_heading("Genres:")
      Genre.all.each do |genre|
        @seen_it_view.display_genre(genre)
      end
      @seen_it_view.display_footer
      genre_choice = gets.chomp.to_i
      movie_ids = []
      MovieGenres.all.each do |item|
        if item[:genre_id] == genre_choice
          movie_ids << item[:movie_id]
        end
      end
      @seen_it_view.display_heading("Movies of selected genre:")
      Movie.all.each do |movie|
        if movie_ids.include?(movie[:id])
          @seen_it_view.display(movie)
        end
      end
      @seen_it_view.display_footer
      @command = @seen_it_view.menu
    when "A"
      title = @seen_it_view.add
      movie = Movie.create(title: title[0], year: title[1], imdb_rating: title[2], status: false)
      @command = @seen_it_view.menu
    when "R"
      movies = Movie.all
      @seen_it_view.display_heading("All films:")
      movies.each do |movie|
        @seen_it_view.display(movie)
      end
      remove_movie = @seen_it_view.remove
      movie_to_remove = Movie.find_by(id: remove_movie)
      movie_to_remove.destroy
      @command = @seen_it_view.menu
    when "C"
      movies = Movie.all
      @seen_it_view.display_heading("All films:")
      movies.each do |movie|
        @seen_it_view.display(movie)
      end
      movie_to_update = gets.chomp.to_i
      movie = Movie.find_by(id: movie_to_update)
      movie[status: true]
      movie.save
    else

      @command = @seen_it_view.menu
    end
   end
  end

end

