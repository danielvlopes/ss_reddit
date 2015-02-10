class Vote < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  belongs_to :votable, :polymorphic => true
=======
  belongs_to :votable, polymorphic: true
  belongs_to :user
>>>>>>> 690a82d0333f0ef4ac3b1a47a9ea5fa6686cdd01
end
