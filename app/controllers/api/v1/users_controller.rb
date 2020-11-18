class Api::V1::UsersController < ApplicationController
    #skip_before_action :authorized, only: [:create]

    # def profile
    # render json: { user: UserSerializer.new(current_user) }, status: :accepted
    # end

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(user_id: params[:user_id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

private
    def user_params
        params.require(:user).permit(:name, :user_id)
    end


end