class Dish < ApplicationRecord
    has_many :menus 
    has_many :homecooks, through: :menus 
end
