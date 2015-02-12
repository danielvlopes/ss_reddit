class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :text
      t.date :created_at
      t.string :thumbnail_url
      t.integer :user_id
      t.integer :votes

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
