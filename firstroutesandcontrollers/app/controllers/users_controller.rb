class UsersController < ApplicationController

    def index

        @users = User.all
        render json: @users

    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update!(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.delete
        render json: @user
    end

    def user_params
        params.require(:user).permit(:name)
    end
end