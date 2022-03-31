class User < ApplicationRecord
    validates_presence_of   :identifier,
                            :name,
                            :email,
                            :phoneNumber,
                            :milesRidden,
                            :timesRidden
    validates_uniqueness_of :identifier
end
