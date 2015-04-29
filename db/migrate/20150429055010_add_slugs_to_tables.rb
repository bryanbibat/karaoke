class AddSlugsToTables < ActiveRecord::Migration
  def change
    add_column :artists, :slug, :string
    add_index :artists, :slug, unique: true
    add_column :karaoke_machines, :slug, :string
    add_index :karaoke_machines, :slug, unique: true
    add_column :karaoke_places, :slug, :string
    add_index :karaoke_places, :slug, unique: true
    add_column :songs, :slug, :string
    add_index :songs, :slug, unique: true
  end
end
