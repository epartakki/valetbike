class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :password, :name, :email))

    fun_facts = [
      "A shrimp's heart is in its head.",
      "A shark is the only known fish that can blink with both eyes.",
      "Moose are the last surviving species of North American megafauna.",
      "The giant squid has the largest eyes in the world.",
      "An ostrich's eye is bigger than its brain."
    ]

    @user.fun_fact = fun_facts.shuffle.first

    @user.save

    session[:user_id] = @user.id
    redirect_to '/account'
  end
end