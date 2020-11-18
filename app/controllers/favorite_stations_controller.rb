class FavoriteStationsController < ApplicationController
    #before_action :authorized

    def index
        favorite_stations = Favorite_Station.all
        render json: favorite_stations
    end

    def show
        favorite_station = Favorite_Station.find(favorite_station_params)
        render json: favorite_station
    end

    def create
        favorite_station = Favorite_Station.create(favorite_station_params)
        render json: favorite_station
    end

    def update
        favorite_station = Favorite_Station.find(params[:id])
        favorite_station.update(favorite_station_params)
        render json: favorite_station
    end

    def destroy
        favorite_station = Favorite_Station.find(params[:id]).destroy
        render json: favorite_station
    end

private

    def favorite_station_params
        params.require(:favorite_station).permit(:user_id, :bike_station_id, :location, :borough)
    end


end