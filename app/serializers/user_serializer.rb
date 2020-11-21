class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :reviews, :check_ins, :favorite_stations
end
