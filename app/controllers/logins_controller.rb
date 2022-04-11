class LoginsController < ApplicationController
    # Login user
    def create
        if user = User.authenticate([:username], params[:password])
            session[:current_user_id] = user.id
            redirect_to root_path
        end
    end

    # Logout user
    def destroy
        session.delete(:current_user_id)
        @_current_user = nil
        redirect_to root_path
    end
end
