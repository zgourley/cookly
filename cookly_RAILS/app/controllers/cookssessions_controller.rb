class CookssessionsController < ApplicationController
  def new
  end

  def create
    cook = Cook.find_by(email: params[:login][:email])
    if cook && cook.authenticate(params[:login][:password])
      # set a cookie, so our browser knows 
      # we are who we say we are
      session[:cook_id] = cook.id.to_s
      redirect_to cooks_path
    else
      # give them another shot at logging
      # perhaps by redirecting back to the login form
      redirect_to cooks_login_path
    end
  end

  def destroy
    session.delete(:cook_id)
    redirect_to cook_login_path
  end
end
