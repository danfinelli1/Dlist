class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      login(@user)
      redirect_to @user
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :city, :rating)
  end

end
