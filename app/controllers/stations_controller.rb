class StationsController < ApplicationController
  
  def index
    @stations = Station.all.order(identifier: :asc)
  end

  def new
    @stations = Station.new
  end
  
end
