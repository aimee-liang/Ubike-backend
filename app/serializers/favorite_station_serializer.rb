class FavoriteStationSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :bike_station_id, :location, :borough
end  