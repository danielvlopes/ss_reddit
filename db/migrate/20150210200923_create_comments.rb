class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :permalink
      t.string :text
      t.integer :user_id
      t.integer :votes
      t.date :created_at

      t.timestamps null: false
    end
  end
end
