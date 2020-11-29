class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bike, :name, :bio, :avatar, :reviews, :check_in, :favorite_stations

  def reviews
    self.object.reviews
  end

  def check_in
      self.object.check_in
  end

  def favorite_stations
      self.object.favorite_stations
  end

end
