class AddAltNameToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :original_name, :string
  end
end
