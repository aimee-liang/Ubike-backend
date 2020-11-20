class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  has_many :reviews, :check_ins, :favorite_stations
end
