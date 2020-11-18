class Api::V1::ReviewsController < ApplicationController
    #before_action :authorized
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find_all_by(user_id: params[:user_id])
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
        params.require(:review).permit(:user_id, :bike_station_id, :comment)
    end
end