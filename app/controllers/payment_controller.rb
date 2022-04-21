class PaymentController < ApplicationController
    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            redirect_to '/payment'
        else
            redirect_to '/login'
        end
      end
end
