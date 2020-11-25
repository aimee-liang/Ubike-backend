class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bike, :name, :bio

  def reviews
    self.object.reviews
  end

  def check_ins
      self.object.check_ins
  end

  def favorite_stations
      self.object.favorite_stations
  end

end
