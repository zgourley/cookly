class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:login][:email])
    
    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to user_path(user)
    else
      redirect_to users_login_path
    end
  end

  def destroy
      session.delete(:user_id)
      redirect_to login_path
  end
end

