class Post < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :votable

  validates :user, presence: true
  validates :title, presence: true
end