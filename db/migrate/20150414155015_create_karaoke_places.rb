class CreateKaraokePlaces < ActiveRecord::Migration
  def change
    create_table :karaoke_places do |t|
      t.string :name
      t.text :description
      t.references :karaoke_machine, index: true, foreign_key: true
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6

      t.timestamps null: false
    end
  end
end
