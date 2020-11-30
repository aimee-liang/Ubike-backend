class Api::V1::ReviewsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.where(bike_station_id: params[:bike_station_id])
        render json: review
    end

    def create
        review = Review.create(reviews_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id]).destroy
        render json: review
    end

private
    def reviews_params
        params.require(:review).permit(:id, :user_id, :bike_station_id, :comment, :username)
    end
end