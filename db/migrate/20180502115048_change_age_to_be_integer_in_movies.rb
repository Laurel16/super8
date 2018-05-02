class ChangeAgeToBeIntegerInMovies < ActiveRecord::Migration[5.1]
  def change
    change_column :movies, :age, :integer, using: 'age::integer'
  end
end
