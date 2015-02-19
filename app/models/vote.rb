class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :votable, :polymorphic => true
  validates :user, :presence => true
  validates :votable, :presence => true
  # validates :votable, :uniqueness, :scope => :user_id
end
