class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :user, presence: true
  validates :text, presence: true

  after_save :send_new_comment_mailer

  def send_new_comment_mailer
    NotificationsMailer.new_comment(self.post.user, self).deliver_later
  end
end
