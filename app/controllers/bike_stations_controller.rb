class BikeStationsController < ApplicationController

    def index
        bike_stations = Bike_Station.all
        render json: bike_stations
    end

    def show
        bike_station = Bike_Station.find(bike_station_params)
        render json: bike_station
    end

    def create
        bike_station = Bike_Station.find_or_create_by!(bike_station_params)
        render json: bike_station
    end

private
    def bike_station_params
        params.require(:bike_station).permit(:location, :borough, :bike_station_id, :number_of_bike_racks, :available_bike_racks)
    end


end