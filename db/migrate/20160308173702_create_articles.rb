class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.references :admin, index: true, foreign_key: true
      t.string :slug
      t.text :summary
      t.text :content
      t.text :js
      t.text :css
      t.string :thumbnail
      t.string :status
      t.datetime :published_at

      t.timestamps null: false
    end
  end
end
