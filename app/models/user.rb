class User < ApplicationRecord
    # has_secure_password # using bcrypt gem

    # validates_presence_of   :identifier,
    #                         :username,
    #                         :password
    
    # validates_uniqueness_of :identifier,
    #                         :username

    belongs_to :rides, class_name: :Ride, foreign_key: :user_id
end
