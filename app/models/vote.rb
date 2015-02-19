class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :user
  validates  :user, :uniqueness => { :scope => :votable }
end
