class BikeStationSerializer < ActiveModel::Serializer
    attributes :id, :location, :borough, :available_bike_racks, :number_of_bike_racks, :reviews, :check_ins, :favorite_stations

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