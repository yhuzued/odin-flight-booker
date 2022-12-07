class Airport < ApplicationRecord
  has_many :origin, foreign_key: 'origin_id', class_name: "Flight"
  has_many :destination, foreign_key: 'destination_id', class_name: "Flight"

  has_many :flights
end
