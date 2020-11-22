class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bike
  has_many :reviews, :check_ins, :favorite_stations
end
