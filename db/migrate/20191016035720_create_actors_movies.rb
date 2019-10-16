class CreateActorsMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :actors_movies do |t|
      t.references :movie, foreign_key: true
      t.references :actor, foreign_key: true
      t.string :character

      t.timestamps
    end
  end
end
