class User < ApplicationRecord
    has_many :favorite_stations
    has_many :reviews
    has_many :check_ins
    has_many :bike_stations, through: :check_ins
    has_many :bike_stations, through: :reviews
end
