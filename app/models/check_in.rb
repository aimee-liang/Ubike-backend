class Check_In < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station
end
