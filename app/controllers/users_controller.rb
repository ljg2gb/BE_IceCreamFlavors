class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors.messages
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors.messages
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "This user has been deleted."}
    end

    private
    def user_params
        params.require(:user).permit([:name, :username, :email, :password, :icecream])
    end
end
