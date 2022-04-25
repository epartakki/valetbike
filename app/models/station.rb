class Station < ApplicationRecord
    validates_presence_of   :identifier,
                            :name,
                            :address,
                            :lat,
                            :lng

    validates_uniqueness_of :identifier
  
    has_many :docked_bikes, class_name: :Bike, foreign_key: :current_station_id
    has_many :start_rides, class_name: :Ride, foreign_key: :start_station_id
    has_many :end_rides, class_name: :Ride, foreign_key: :end_station_id
end
