class FavoriteStationSerializer < ActiveModel::Serializer
    attributes :user_id, :bike_station_id, :location, :borough
end  