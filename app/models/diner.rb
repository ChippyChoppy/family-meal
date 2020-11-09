class Diner < ApplicationRecord
    has_many :reservations
    has_many :homecooks, through: :reservations 
end
