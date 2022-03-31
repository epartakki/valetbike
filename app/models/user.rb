class User < ApplicationRecord
    validates_presence_of   :identifier,
                            :name,
                            :email,
                            :phoneNumber,
                            :milesRidden,   #depends on rides
                            :timesRidden    #depends on rides
    validates_uniqueness_of :identifier

    belongs_to :rides, class_name: :Ride, foreign_key: :ride_id
end
