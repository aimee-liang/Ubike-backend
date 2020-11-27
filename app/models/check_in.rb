class CheckIn < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station

    # validates :user_id, uniqueness: :true
    validates :user_id, uniqueness: {scope: :bike_station_id}
end
