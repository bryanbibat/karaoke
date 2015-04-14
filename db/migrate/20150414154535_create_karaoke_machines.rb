class CreateKaraokeMachines < ActiveRecord::Migration
  def change
    create_table :karaoke_machines do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
