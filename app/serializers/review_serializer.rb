class ReviewSerializer < ActiveModel::Serializer
    attributes :user_id, :bike_station_id, :comment
end  