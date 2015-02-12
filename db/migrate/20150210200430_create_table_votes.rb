class CreateTableVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :post, index: true
      t.integer :like
    end
    add_foreign_key :table_votes, :users
    add_foreign_key :table_votes, :posts
  end
end
