class CreateKaraokeSongs < ActiveRecord::Migration
  def change
    create_table :karaoke_songs do |t|
      t.string :key
      t.references :song, index: true, foreign_key: true
      t.references :karaoke_machine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
