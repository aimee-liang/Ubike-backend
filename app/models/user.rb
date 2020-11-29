class User < ApplicationRecord
    has_secure_password

    has_many :favorite_stations
    has_many :reviews
    has_many :check_ins
    # has_one  :check_ins
    has_many :bike_stations, through: :check_ins
    has_many :bike_stations, through: :reviews

    validates :username, uniqueness: {case_sensitive: false}

    # validates :only_one_check_in, message: "Can only be checked in at one place!"

    # def only_one_check_in
    #     self.check_in.length > 1
    # end

end
