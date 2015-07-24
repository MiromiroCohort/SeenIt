require_relative "../config/application"


movie_genres = ["Action", "Adventure", "Comedy", "Crime", "Drama", "Fantasy", "History", "Historical fiction", "Horror", "Mystery",
                "Philosophical", "Political", "Romance", "Saga", "Satire", "Science fiction", "Speculative", "Thriller", "Urban", "Western"]
genres = {}
movie_genres.each do |name|
  genres[name.downcase.to_sym] = Genre.create(:name => name)
end


top10 = [{:title => "The Shawshank Redemption", :year => "1994", :imdb_rating => "9.2", :status => "false"},
{:title => "The Godfather", :year => "1972", :imdb_rating => "9.2", :status => "false"},
{:title => "The Godfather: Part II", :year => "1974", :imdb_rating => "9.0", :status => "false"},
{:title => "The Dark Knight", :year => "2008", :imdb_rating => "8.9", :status => "false"},
{:title => "Pulp Fiction", :year => "1994", :imdb_rating => "8.9", :status => "false"},
{:title => "12 Angry Men", :year => "1957", :imdb_rating => "8.9", :status => "false"},
{:title => "Schindler's List", :year => "1993", :imdb_rating => "8.9", :status => "false"},
{:title => "The Good, the Bad and the Ugly", :year => "1966", :imdb_rating => "8.9", :status => "false"},
{:title => "The Lord of the Rings: The Return of the King", :year => "2003", :imdb_rating => "8.9", :status => "false"},
{:title => "Fight Club", :year => "1999", :imdb_rating => "8.8", :status => "false"}]

movies = []
top10.each do |hash|
  movies << Movie.create(hash)
end

MovieGenres.create(:movie_id => movies[0][:id], :genre_id => genres[:crime][:id])
MovieGenres.create(:movie_id => movies[0][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[1][:id], :genre_id => genres[:crime][:id])
MovieGenres.create(:movie_id => movies[1][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[2][:id], :genre_id => genres[:crime][:id])
MovieGenres.create(:movie_id => movies[2][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[3][:id], :genre_id => genres[:action][:id])
MovieGenres.create(:movie_id => movies[3][:id], :genre_id => genres[:crime][:id])
MovieGenres.create(:movie_id => movies[3][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[4][:id], :genre_id => genres[:crime][:id])
MovieGenres.create(:movie_id => movies[4][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[5][:id], :genre_id => genres[:crime][:id])
MovieGenres.create(:movie_id => movies[5][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[5][:id], :genre_id => genres[:mystery][:id])
MovieGenres.create(:movie_id => movies[6][:id], :genre_id => genres[:drama][:id])
MovieGenres.create(:movie_id => movies[6][:id], :genre_id => genres[:history][:id])
MovieGenres.create(:movie_id => movies[7][:id], :genre_id => genres[:western][:id])
MovieGenres.create(:movie_id => movies[8][:id], :genre_id => genres[:adventure][:id])
MovieGenres.create(:movie_id => movies[8][:id], :genre_id => genres[:fantasy][:id])
MovieGenres.create(:movie_id => movies[9][:id], :genre_id => genres[:drama][:id])

