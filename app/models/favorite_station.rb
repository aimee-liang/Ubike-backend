class FavoriteStation < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station

    validates :user_id, uniqueness: {scope: :bike_station_id, message: "You can't favorite a station more than once!"}
end
