class User < ApplicationRecord
    has_secure_password

    validates_presence_of   :identifier,
                            :username,
                            :password,
                            :first_name,
                            :last_name,
                            :email,
                            :phone_number,
                            :miles_ridden,   #depends on rides
                            :ride_count    #depends on rides
    
    validates_uniqueness_of :identifier,
                            :username

    belongs_to :rides, class_name: :Ride, foreign_key: :user_id
end
