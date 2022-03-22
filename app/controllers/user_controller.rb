class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  # for the sign up page
  def new
    @user = User.new
  end

  # process sign up request
  def create
    @user = User.create(params.require(:user).permit(:first_name, :last_name, :username,
   :password, :email))
   session[:user_id] = @user.id
   redirect_to '/payment'
  end
end
