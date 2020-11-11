class Homecook < ApplicationRecord
    has_many :reservations 
    has_many :diners, through: :reservations
    has_many :menus 
    has_many :dishes, through: :menus 


    def avg_price 
        self.menus.sum {|menu| menu.price / menus.count } 
    end

end
