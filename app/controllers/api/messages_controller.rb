module Api
  class MessagesController < BaseController

    def create
      user = User.find_by_id(params[:id])
      subject = params[:subject]
      message = params[:message]
      reply_to = params[:reply_to]

      render_404! unless user && subject && message && reply_to

      UserNotifier.send_message(user, subject, message, reply_to).deliver_now

      head 200
    end

  end
end
