class ReservationsController < ApplicationController

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.save
        redirect_to diner_path(@reservation.diner)
    end

    def edit
        @reservation = Reservation.find(params[:id])
        
    end

    def update
        @reservation = Reservation.find(params[:id])
        @reservation.update(reservation_params)
        redirect_to diner_path(@reservation.diner)
    end

    def destroy
        @reservation = Reservation.find(params[:id]).delete
        redirect_to diner_path(@reservation.diner)
    end

    private
    def reservation_params
        params.require(:reservation).permit(:homecook_id, :diner_id, :party_size, :date, :time)
    end
end
