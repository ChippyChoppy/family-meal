class Homecook < ApplicationRecord
    has_many :reservations 
    has_many :diners, through: :reservations
    has_many :menus 
    has_many :dishes, through: :menus 
    validates :email, uniqueness: true
    validates :name, :password, :email, :neighborhood, :cuisine, :address, :open, :profile_pic, :home_pic, presence: true 
    validates :password, length: { in: 8..20}


    def avg_price 
        self.menus.sum {|menu| menu.price / menus.count } 
    end

end
