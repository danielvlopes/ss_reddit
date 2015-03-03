class User < ActiveRecord::Base
  validates :email, presence: true
  has_many :posts
  has_many :votes
end
