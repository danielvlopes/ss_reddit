class Post < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  has_many :votes, :as => :votable
=======
  belongs_to :author, foreign_key: :user_id, class_name: "User"
  has_many :votes, as: :votable
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
end
