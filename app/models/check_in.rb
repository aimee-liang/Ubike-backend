class CheckIn < ApplicationRecord
    belongs_to :user
    belongs_to :bike_station

    # validates :user_id, uniqueness: :true
    validates :user_id, uniqueness: {scope: :bike_station_id, message: "You've already checked in!"}
    # validates :numericality, :greater_than_or_equal_to: 0
end
