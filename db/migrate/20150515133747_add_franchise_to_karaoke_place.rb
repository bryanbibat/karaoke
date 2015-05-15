class AddFranchiseToKaraokePlace < ActiveRecord::Migration
  def change
    add_reference :karaoke_places, :franchise, index: true, foreign_key: true
  end
end
