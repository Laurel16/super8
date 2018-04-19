class AddImpressionsCountToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :impressions_count, :integer
  end
end
