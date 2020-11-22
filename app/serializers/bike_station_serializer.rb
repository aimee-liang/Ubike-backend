class BikeStationSerializer < ActiveModel::Serializer
    attributes :id, :location, :borough, :available_bike_racks, :number_of_bike_racks, :reviews
    # has_many :reviews_id, :check_ins, :favorite_stations

    def reviews
        self.object.reviews
    end

    #come back to this - check ins and favorite stations
    
end  