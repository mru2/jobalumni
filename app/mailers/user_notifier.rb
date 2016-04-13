class UserNotifier < ApplicationMailer

  def send_message(user, subject, message, email)
    @user = user
    @message = message
    @reply_to = email
    mail(to: @user.email, subject: subject)
  end

end
