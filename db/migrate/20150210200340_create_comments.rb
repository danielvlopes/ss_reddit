class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :permalink
      t.text :text
      t.references :user
      t.references :votable, :polymorphic => true, :index => true

      t.timestamps null: false
    end
  end
end
