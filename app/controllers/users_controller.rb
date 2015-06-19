
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to user_path(@user), notice: "Welcome, #{@user.username}"
    else
      flash.alert = "Please fix the errors below to continue."
      render :new
    end
  end

  def edit
    if !current_user
      redirect_to root_path
    else
      @user = current_user
    end
  end

  def show
    @user = User.find params[:id]
  end

  protected

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end