class CheckIn < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station
end
