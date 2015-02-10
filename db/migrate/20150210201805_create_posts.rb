class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :text
      t.string :thumbnail_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
