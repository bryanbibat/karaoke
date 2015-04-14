class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :original_name
      t.text :description
      t.date :released_at
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
