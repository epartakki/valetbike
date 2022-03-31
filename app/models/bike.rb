class Bike < ApplicationRecord
    validates_presence_of   :identifier,
                            :bike_model,
                            :charge,
                            :condition,
    validates_uniqueness_of :identifier

    belongs_to :current_station, class_name: :Station, foreign_key: :current_station_id, optional: true
    belongs_to :current_ride, class_name: :Ride, foreign_key: :current_ride_id, optional: true
end
