class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates_presence_of :text, :user_id, :post_id
end
