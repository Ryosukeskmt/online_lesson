class AddMovieToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :movie, :string
  end
end
