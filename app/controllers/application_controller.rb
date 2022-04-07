class ApplicationController < ActionController::Base

    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?

    private

    # Find user with id stored in the session
    def current_user
        @_current_user ||= session[:current_user_id] && # if there is not a current user, assign to the user of the current session
            User.find_by(id: session[:current_user_id])
    end
  
    def logged_in?
        !current_user.nil?
    end
  
    def authorized
      redirect_to '/welcome' unless logged_in?
    end

end
