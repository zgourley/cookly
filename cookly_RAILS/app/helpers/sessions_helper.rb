module SessionsHelper
  def logged_in?
    session[:user_id] != nil
  end

  def logged_in?
    session[:cook_id] != nil
  end

end
