class CheckInSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :bike_station_id, :location, :datetime
end  