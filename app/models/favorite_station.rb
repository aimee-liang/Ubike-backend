class Favorite_Station < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station
end
