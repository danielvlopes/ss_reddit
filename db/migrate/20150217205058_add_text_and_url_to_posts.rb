class AddTextAndUrlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :text, :text
    add_column :posts, :url, :string
  end
end
