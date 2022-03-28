class Ride < ApplicationRecord
    validates_presence_of   :identifier,
                            :start_time,
                            :end_time;
                            :duration;
    validates_uniqueness_of :identifier

    has_one :user, class_name :User, foreign_key :user_id
    has_one :bike, class_name :Bike, foreign_key :bike_id
    has_one :start_station, class_name :Station, foreign_key :start_station_id
    has_one :end_station, class_name :Station, foreign_key :end_station_id
end
