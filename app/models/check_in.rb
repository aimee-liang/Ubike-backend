class CheckIn < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station

    validates :user_id, uniqueness: true
    validates :bike_station_id, uniqueness: {scope: :user_id, message: "You've already checked in!"}

end
