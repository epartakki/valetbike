class User < ApplicationRecord
    # https://stackoverflow.com/questions/12746280/define-a-unique-primary-key-based-on-2-columns
    # has_secure_password # using bcrypt gem

    # validates_presence_of   :identifier,
    #                         :username,
    #                         :password
    
    # validates_uniqueness_of :identifier

    has_many :rides, class_name: :Ride, foreign_key: :user_id
end

<<<<<<< HEAD
# class User < ActiveRecord::Base
#   has_secure_password
#   self.primary_keys = :name
# end
=======
>>>>>>> origin/master
