class Api::V1::FavoriteStationsController < ApplicationController
    skip_before_action :authorized

    def index
        favorite_stations = FavoriteStation.all
        render json: favorite_stations
    end

    def show
        favorite_station = FavoriteStation.find(favorite_station_params)
        render json: favorite_station
    end

    def create
        favorite_station = FavoriteStation.create(favorite_station_params)
        render json: favorite_station
    end

    def update
        favorite_station = FavoriteStation.find(params[:id])
        favorite_station.update(favorite_station_params)
        render json: favorite_station
    end

    def destroy
        favorite_station = FavoriteStation.find(params[:id]).destroy
        render json: favorite_station
    end

private

    def favorite_station_params
        params.require(:favorite_station).permit(:id, :user_id, :bike_station_id, :location, :borough)
    end


end