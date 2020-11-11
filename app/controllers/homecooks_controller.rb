class HomecooksController < ApplicationController
    def index
        @homecooks = Homecook.all 
    end

    def show 
        @homecook = Homecook.find(params[:id])
    end
end
