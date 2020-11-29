class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :bike_station_id, :comment, :username
end  