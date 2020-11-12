class ReservationsController < ApplicationController

    def show 
        @reservation = Reservation.find(params[:id])
    end

    def new
        @reservation = Reservation.new
    end


    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            redirect_to diner_path(@reservation.diner)
        else  
            flash[:errors] = @reservation.errors.full_messages
            redirect_to new_reservation_path
        end
    end

    def edit
        @reservation = Reservation.find(params[:id])
        
    end

    def update
        @reservation = Reservation.find(params[:id])
        if @reservation.update(reservation_params)
            redirect_to diner_path(@reservation.diner)
        else  
            flash[:errors] = @reservation.errors.full_messages
            redirect_to edit_reservation_path  
        end
    end

    def destroy
        @reservation = Reservation.find(params[:id]).delete
        redirect_to diner_path(@reservation.diner)
    end

    private
    def reservation_params
        params.require(:reservation).permit(:homecook_id, :diner_id, :party_size, :date, :time)
    end
end #class
