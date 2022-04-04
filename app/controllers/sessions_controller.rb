class SessionsController < ApplicationController


    skip_before_action :authorized, only: [:new, :create, :welcome, :about, :payment, :how_it_works, :FAQ]
  
  
    def new
    end
  
    # Check user's input of username and password
    def create
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
  
          session[:user_id] = @user.id
  
          redirect_to '/authorized'
      else
          flash[:error] = "Incorrect username or password" # Send error when redirected
          redirect_to '/login'
      end
  
    end
  
    def login
    end
  
    def welcome
    end
  
    def about
    end
  
    # This is for map page
    def page_requires_login
      @stations = Station.all.order(identifier: :asc)
      @bikes = Bike.all.order(identifier: :asc)
    end
  
    def payment
    end
  
    # User can type in the bike code to rent the bike
    # This page is aware of what station is specified
    def checkout
      # Check if the query of station_identifier exists in url
      if params[:station_identifier]
        session[:station_identifier] = params[:station_identifier].to_i
      end
      @station = Station.find_by_identifier(session[:station_identifier])
    end
  
    # Process check-out request
    def check
      # if user has a bike checked out already, they get redirected to check-in page
      if current_user.current_bike_id
        flash[:alart] = "You cannot check out more than one bike. Please return your bike to a station"
        redirect_to '/checkin' and return
      end
      b = Bike.find_by_identifier(params[:bikeid])
      # Check if the bike user is trying to check out exists at the station specified
      if b && session[:station_identifier] == b.current_station_identifier
        current_user.update_attribute(:current_bike_id, params[:bikeid])
        b.update_attribute(:current_station_identifier, nil)
        redirect_to '/ride'
      else
        # if the bike doesn't exist in the specified station, send error
        flash[:error] = "Could not find the bike at this station"
        redirect_to '/checkout'
      end
    end
  
    def ride
      @bike = Bike.find_by_identifier(current_user.current_bike_id)
      @stations = Station.all.order(identifier: :asc)
      @bikes = Bike.all.order(identifier: :asc)
    end
  
    def about
    end
  
    # Process logout request
    def logout
      session[:user_id]= nil
      redirect_to '/welcome'
    end
  
    def how_it_works
    end
  
    def FAQ
    end
  
    def checkin
      @stations = Station.all.order(identifier: :asc)
    end
  
    #Processes bike check in
    def process_checkin
      @bike = Bike.find_by_identifier(current_user.current_bike_id)
      @bike.update_attribute(:current_station_identifier, params[:station_identifier])
      current_user.update_attribute(:current_bike_id, nil)
    end
  
  end
  