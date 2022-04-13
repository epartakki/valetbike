class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome, :about, :map, :faq, :pricing] #anything listed here can be viewed w/o logging in/authorization

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])

        session[:user_id] = @user.id

        redirect_to root_path
    else
        redirect_to '/login'
    end
  end

  def destroy
    #log out user
  end

  def account
  end

  def payment
  end

  def welcome
  end

  def faq
  end

  def pricing
  end

end