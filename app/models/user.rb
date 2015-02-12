class User < ActiveRecord::Base
  has_many :post
  has_many :votes, as: :voteable
end
