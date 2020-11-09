class Reservation < ApplicationRecord
  belongs_to :homecook
  belongs_to :diner
end
