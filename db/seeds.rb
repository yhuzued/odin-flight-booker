# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

array_of_airport = [Airport.first, Airport.last]

1000.times do |i| 
  origin = array_of_airport.sample

  destination = Airport.first if origin == Airport.last
  destination = Airport.last if origin == Airport.first

  make_flight = origin.origin.build(start: DateTime.now + 1, flight_duration: 4, destination: destination)
  make_flight.save
end