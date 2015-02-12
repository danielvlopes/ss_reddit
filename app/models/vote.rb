class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :votable, polymorphic: true

  validates :post_id, uniqueness: {scope: :user_id}
end
