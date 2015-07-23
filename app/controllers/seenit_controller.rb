require_relative "../views/seen_it_view.rb"


class SeenItController
  def initialize
    @seen_it_view = SeenItView.new
  end

  def run
    @seen_it_view.welcome
  end

  case input
    when "D"
      movies = Movie.all
      movies.each do |movie|
        puts movie
      end

        # @seen_it_view.display_all
    when "S"
      @seen_it_view.display_seen
    # print the list of seen movies
    when "U"
      @seen_it_view.display_unseen
    # print the list of unseen movies
    when "G"
      @seen_it_view.display_genre
    # remove the movie from the Database
    when "A"
      title = @seen_it_view.add
      Movie.create(title: title)
    # ask the user for input via the views
    # add the input to the Database
    when "R"
      @seen_it_view.remove

    # when "help"
    #   @seen_it_view.help
    # # print instructions with available commands
    when "exit"

    # exit the program
    else
      # not sure
    end

end

