class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.references :karaoke_machine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
