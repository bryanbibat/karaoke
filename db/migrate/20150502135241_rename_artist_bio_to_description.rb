class RenameArtistBioToDescription < ActiveRecord::Migration
  def change
    rename_column :artists, :bio, :description
  end
end
