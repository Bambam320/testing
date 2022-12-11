class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :category
      t.string :poster_url
      t.string :description
      t.integer :year
      t.integer :length
      t.timestamps
    end
  end
end
