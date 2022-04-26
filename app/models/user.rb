class User < ApplicationRecord

    # https://stackoverflow.com/questions/12746280/define-a-unique-primary-key-based-on-2-columns
    has_secure_password # using bcrypt gem

    validates_presence_of   :username
                            :password

    has_many :rides, class_name: :Ride, foreign_key: :user_id
end

