class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :url
      t.text :text
      t.text :thumbnail_url
      t.string :user_id
      t.string :votes

      t.timestamps null: false
    end
  end
end
