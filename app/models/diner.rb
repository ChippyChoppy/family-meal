class Diner < ApplicationRecord
    has_many :reservations
    has_many :homecooks, through: :reservations 

    def upcoming_reservations
        self.reservations.where("date > ?", Date.today.to_s)
    end

    def upcoming_name
        upcoming_reservations.map do |reservation|
            reservation.homecook.name
        end
    end
    
    def past_reservations
        self.reservations.where("date < ?", Date.today.to_s)
    end

    def past_name
        past_reservations.map do |reservation|
            reservation.homecook.name 
        end
    end

    # def upcoming_reservations
    #     self.reservations.select do |reservation|
    #     reso = []
    #        if reservation.date >= Date.today
    #         reso << reservation.homecook.name
    #         reso << reservation.date
    #         reso << reservation.time
    #         end
    #     reso
    #     end
    # end

end #class
