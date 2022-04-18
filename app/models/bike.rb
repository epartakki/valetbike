class Bike < ApplicationRecord
    belongs_to :current_station, class_name: :Station, foreign_key: :current_station_id, optional: true
    belongs_to :current_ride, class_name: :Ride, foreign_key: :bike_id, optional: true
end
