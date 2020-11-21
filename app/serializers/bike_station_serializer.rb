class UserSerializer < ActiveModel::Serializer
    attributes :location, :borough, :available_bike_racks, :number_of_bike_racks
    has_many :reviews, :check_ins, :favorite_stations
end  