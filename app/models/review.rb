class Review < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station
end
