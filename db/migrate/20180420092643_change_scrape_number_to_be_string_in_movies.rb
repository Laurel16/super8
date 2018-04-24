class ChangeScrapeNumberToBeStringInMovies < ActiveRecord::Migration[5.1]
  def change
    change_column :movies, :scrap_number, :string
  end
end
