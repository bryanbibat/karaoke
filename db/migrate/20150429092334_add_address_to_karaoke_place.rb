class AddAddressToKaraokePlace < ActiveRecord::Migration
  def change
    add_column :karaoke_places, :address, :string
  end
end
