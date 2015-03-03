class User < ActiveRecord::Base
  validates :email, presence: true
  has_many :posts
  has_many :votes
  has_many :comments
end
