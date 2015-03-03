class Post < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :votable

  validates :user, presence: true
  validates :title, presence: true

  def vote_by(user)
    @vote_by ||= votes.where(user_id: user.id).limit(1).first
  end

  def score
    votes.sum(:score)
  end

end