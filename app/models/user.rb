class User < ActiveRecord::Base
    has_many :votes, as :voteable
    has_many :posts
end
