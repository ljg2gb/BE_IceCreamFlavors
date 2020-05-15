class IcecreamsController < ApplicationController
    def index
        @icecreams = Icecream.all
        render json: @icecreams
    end

    def show
        @icecream = Icecream.find(params[:id])
        render json: @icecream
    end

    def create
        @icecream = Icecream.new(icecream_params)
        if @icecream.save
            render json: @icecream
        else
            render json: @icecream.errors.messages
    end

    def update
        @icecream = Icecream.find(params[:id])
        @icecream.update(icecream_params)
        if @icecream.save
            render json: @icecream
        else
            render json: @icecream.errors.messages
    end

    def destroy
        @icecream = Icecream.find(params[:id])
        @icecream.destroy
        render json: {message: "This flavor has been deleted."}
    end

    private
    def icecream_params
        params.require(:icecream).permit([:flavor])
    end
end

