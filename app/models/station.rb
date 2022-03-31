class Station < ApplicationRecord
    validates_presence_of   :identifier,
                            :name,
                            :address_line1,
                            :address_city,
                            :address_state,
                            :address_country,
                            :total_slots,
                            :available_slots, # changes
                            :lng,
                            :lat
    validates_uniqueness_of :identifier
  
    has_many :docked_bikes, class_name: :Bike, foreign_key: :current_station_id
    belongs_to :start_ride, class_name: :Ride, foreign_key: :start_ride_id
    belongs_to :end_ride, class_name: :Ride, foreign_key: :end_ride_id # check to see if this is how you do it
end
