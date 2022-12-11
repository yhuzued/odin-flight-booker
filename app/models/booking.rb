class Booking < ApplicationRecord
 belongs_to :passenger, class_name: "Passenger", foreign_key: "passenger_id"
 belongs_to :flights, class_name: "Flight", foreign_key: "flights_id"

 has_many :passengers
 accepts_nested_attributes_for :passengers
end
