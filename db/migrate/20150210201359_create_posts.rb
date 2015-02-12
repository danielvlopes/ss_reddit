class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.text :text
      t.string :thumbnail_url
      t.references :user, :index
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
