class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :user

  validates :user_id, uniqueness: {
    scope: :votable_id,
    message: "You can only vote once"
  }
end
