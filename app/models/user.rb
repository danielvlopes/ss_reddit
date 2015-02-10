class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes, :as => :votable

  validate :email, :presence => true, :uniqueness => true
end
