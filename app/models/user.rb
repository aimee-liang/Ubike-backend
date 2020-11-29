class User < ApplicationRecord
    has_secure_password

    has_many :favorite_stations
    has_many :reviews
    # has_many :check_ins
    has_one  :check_in
    has_many :bike_stations, through: :check_ins
    has_many :bike_stations, through: :reviews

    validates :username, uniqueness: {case_sensitive: false}


end
