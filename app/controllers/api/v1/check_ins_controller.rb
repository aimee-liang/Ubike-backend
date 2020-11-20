class Api::V1::CheckInsController < ApplicationController
    # before_action :authorized

    def index
        check_ins = CheckIn.all
        render json: check_ins
    end

    def show
        check_in = CheckIn.find_or_create_by(user_id: params[:user_id])
        render json: check_in
    end

    def create
        check_in = CheckIn.create(check_ins_params)
        render json: check_in
    end

    def destroy
        check_in = CheckIn.find(params[:id]).destroy
        render json: check_in
    end

private
    def check_ins_params
        params.require(:check_in).permit(:user_id, :bike_station_id)
    end

end