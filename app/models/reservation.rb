class Reservation < ApplicationRecord
  belongs_to :homecook
  belongs_to :diner
  validates :party_size, numericality: {greater_than: 0, less_than: 7}
  validates :time, numericality: {greater_than: 17, less_than: 22}
end
