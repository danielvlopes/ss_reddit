class User < ActiveRecord::Base
<<<<<<< HEAD
  has_many :posts
  has_many :comments
  has_many :votes, :as => :votable

  validate :email, :presence => true, :uniqueness => true
=======
  validates :email, presence: true
  has_many :posts
  has_many :votes
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
end
