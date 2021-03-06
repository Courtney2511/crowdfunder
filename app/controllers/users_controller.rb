class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to projects_url, notice: "SIGNED UP!"
    else
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
