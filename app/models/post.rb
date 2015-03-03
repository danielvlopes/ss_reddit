class Post < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  has_many :votes, as: :votable

  validates :user, presence: true

  validates :title, presence: true
end
=======
  belongs_to :author, foreign_key: :user_id, class_name: "User"
  has_many :votes, as: :votable
end
>>>>>>> daniel
