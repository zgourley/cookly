class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @accepted_meals = @user.accepted_meals
    @unaccepted_meals = @user.unaccepted_meals
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
      session.delete(:user_id)
      redirect_to users_login_path
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :user_image, :password)
  end
end








