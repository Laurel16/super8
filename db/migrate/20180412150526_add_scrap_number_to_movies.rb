class AddScrapNumberToMovies < ActiveRecord::Migration[5.1]
  def change
     add_column :movies, :scrap_number, :integer
  end
end
