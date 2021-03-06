require_relative "../../config/application"

class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :imdb_rating
      t.boolean :status
      t.timestamps null: false
    end
  end
end
