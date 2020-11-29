class CheckIn < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station

    # validates :user_id, uniqueness: {scope: :bike_station_id, message: "You've already checked in!"}
    validates :bike_station_id, uniqueness: {scope: :user_id, message: "You've already checked in!"} #can check into unique stations. Can't repeat

end
