class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome, :about, :map, :faq, :pricing, :payment] #anything listed here can be viewed w/o logging in/authorization

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])

        session[:user_id] = @user.id

        redirect_to root_path
    else
        # flash[:alert] = "something went wrong rip"
        redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    @_current_user = nil
    redirect_to root_path
  end

  def account
  end

  def payment
    if !logged_in?
      redirect_to '/login'
    end
  end

  def welcome
  end

  def faq
  end

  def pricing
  end

end