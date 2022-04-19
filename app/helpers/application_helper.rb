# source: https://dev.to/kjdowns/creating-a-user-login-system-ruby-on-rails-2kl2

module ApplicationHelper

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
  end

end
