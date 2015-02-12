class Vote < ActiveRecord::Base
  belongs_to :votable
  belongs_to :user

  validates :user, presence: true
  validates :votable, presence: true
end
