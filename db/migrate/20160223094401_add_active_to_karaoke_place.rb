class AddActiveToKaraokePlace < ActiveRecord::Migration
  def change
    add_column :karaoke_places, :active, :boolean, default: true

    add_index :karaoke_places, :active
  end
end
