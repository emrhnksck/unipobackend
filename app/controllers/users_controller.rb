class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def get_user(id)
        user = User.find(id)
        render json: user
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
