class UserNotifier < ApplicationMailer

  def send_message(user, subject, message, reply_to)
    @user = user
    @message = message
    @reply_to = reply_to
    markdown_mail(to: @user.email, subject: subject, reply_to: @reply_to)
  end

end
