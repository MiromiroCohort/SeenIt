require_relative "../views/seen_it_view.rb"


class SeenItController
  def initialize
    @seen_it_view = SeenItView.new
  end

  def run
    @seen_it_view.welcome
    command = @seen_it_view.menu
  end

  case command
    when "D"
      movies = Movie.all
      @seen_it_view.display_heading("All")
      movies.each do |movie|
        @seen_it_view.display(movie)
      end
      @seen_it_view.menu
        # @seen_it_view.display_all
    when "S"
      movies = Movie.all
      @seen_it_view.display_heading("Seen")
      movies.each do |movie|
        if movie.status == true
          @seen_it_view.display(movie)
        end
      end
      @seen_it_view.display_footer
      @seen_it_view.menu
    when "U"
      movies = Movie.all
      @seen_it_view.display_heading("Unseen")
      movies.each do |movie|
        if movie.status == false
          @seen_it_view.display(movie)
        end
      end
      @seen_it_view.display_footer
      @seen_it_view.menu
    # print the list of unseen movies
    when "G"

      @seen_it_view.display_genre
      @seen_it_view.menu
    # remove the movie from the Database
    when "A"
      title = @seen_it_view.add

      Movie.create(title: title[0], year: title[1], imdb_rating: title[2], status: false) # What about timestamps??
      @seen_it_view.menu
    # Need to think about genre year etc....
    # ask the user for input via the views
    # add the input to the Database
    when "R"
      remove_movie = @seen_it_view.remove
      movie_to_remove = Movie.find_by(id: remove_movie)
      movie_to_remove.destroy
      @seen_it_view.menu
    when "exit"

    # exit the program
    else
      # not sure
    end

end

