class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :pitch
      t.string :category
      t.date :year
      t.time :length
      t.string :original_title
      t.string :language
      t.string :trailer

      t.timestamps
    end
  end
end
