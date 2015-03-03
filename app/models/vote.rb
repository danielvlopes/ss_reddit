class Vote < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  belongs_to :votable, polymorphic: true

  validates :post_id, uniqueness: {scope: :user_id}
=======
  belongs_to :votable, polymorphic: true
  belongs_to :user
>>>>>>> daniel
end
