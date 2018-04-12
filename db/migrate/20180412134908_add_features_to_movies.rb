class AddFeaturesToMovies < ActiveRecord::Migration[5.1]
  def change
        add_column :movies, :picture, :string
        add_column :movies, :poster, :string

  end
end
