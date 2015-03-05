class NotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.new_comment.subject
  #
  def new_comment(post_author, comment)
    @greeting = "Hey"
    @comment = comment

    mail to: "#{post_author.email}", subject: "New comment on your post"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.update.subject
  #
  def update
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
