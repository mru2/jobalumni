class SessionsController < ApplicationController

  def create
    begin
      service = CreateUserFromOmniauth.new(request.env['omniauth.auth'])
      @user = service.execute!
      binding.pry
      session[:user_id] = @user.id
      flash[:success] = "Welcome, #{@user.full_name}!"
    rescue
      flash[:warning] = 'There was an error while trying to authenticate you...'
    end
    redirect_to root_path
  end

  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = 'See you!'
    end
    redirect_to root_path
  end
end
