class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.text :text
      t.string :thumbnail_url
      t.references :user
      t.references :votable, :polymorphic => true, :index => true

      t.timestamps null: false
    end
  end
end
