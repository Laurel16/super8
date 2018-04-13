class AddAgeToMovies < ActiveRecord::Migration[5.1]
  def change
     add_column :movies, :age, :string
  end
end
