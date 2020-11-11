class DinersController < ApplicationController
    def show
        @diner = Diner.find(params[:id])
    end
    
    def new
        @diner = Diner.new
    end

    def create
        @diner = Diner.new(diner_params)
        @diner.save
        redirect_to diner_path(@diner)
    end

    def edit 
        @diner = Diner.find(params[:id])
    end

    def update
        @diner = Diner.find(params[:id])
        @diner.update(diner_params)
        redirect_to diner_path(@diner)
    end
    
    def destroy
        @diner = Diner.find(params[:id]).delete
        redirect_to homecooks_path
    end

    private
    def diner_params
        params.require(:diner).permit(:name, :password, :email, :location, :dietary_restrictions, :profile_pic)
    end

end #class