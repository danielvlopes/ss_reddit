class Post < ActiveRecord::Base
  has_many :votes, as: :votable
end
