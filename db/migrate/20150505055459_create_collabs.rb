class CreateCollabs < ActiveRecord::Migration
  def change
    create_table :collabs do |t|
      t.integer :collaborator_id, index: true
      t.integer :collaboration_id, index: true
      t.string :role

      t.timestamps null: false
    end
  end
end
