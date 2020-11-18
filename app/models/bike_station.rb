class BikeStation < ApplicationRecord
    has_many :reviews
    has_many :check_ins
    has_many :users, through: :check_ins
    has_many :users, through: :reviews
    has_many :favorite_stations
end
