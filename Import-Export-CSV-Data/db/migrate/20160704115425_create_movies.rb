class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string  :title, default: ''
      t.string  :description, default: ''
      t.integer :rating, default: 0
      t.date    :release_date
      t.string  :genre, default: ''
      t.string  :runtime
      t.timestamps null: false
    end
  end
end
