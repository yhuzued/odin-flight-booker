class Flight < ApplicationRecord
  # Association between airport and airplane
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"

  # Association between flight, booking, and passenger
  has_many :bookings, dependent: :destroy
end
