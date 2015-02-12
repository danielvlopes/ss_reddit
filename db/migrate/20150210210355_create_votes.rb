class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :votable, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :votes, :votables
    add_foreign_key :votes, :users
  end
end
