# Preview all emails at http://localhost:3000/rails/mailers/notifications_mailer
class NotificationsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/new_comment
  def new_comment
    NotificationsMailer.new_comment
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/update
  def update
    NotificationsMailer.update
  end

end
