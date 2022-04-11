class SessionsController < ApplicationController

  #skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])

        session[:user_id] = @user.id

        redirect_to '/welcome'
    else
        redirect_to '/login'
    end

  end

  def login
    render "../views/sessions/login"
  end

  def signup
    render "../views/sessions/signup"
  end

  def welcome
  end

  def about
  end

  def faq
  end

  def map
  end

  def pricing
  end

  def account
  end


end