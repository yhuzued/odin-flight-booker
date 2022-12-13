class FlightsController < ApplicationController
  def index
    @airport_list = Airport.all.map { |u| [u.name, u.id ]}
    @departure_day = Flight.all.map { |u| [u.start, u.start ]}

    unless params["/flights"].nil?
      maskapai = ['Garuda', 'Lion Air', 'City Link', 'Tom Flight']
      @available_flights = Flight.includes(:origin, :destination).where(origin: params["/flights"][:origin], destination: params["/flights"][:destination], start: params["/flights"][:departure_day]).map.with_index { |u, i| ["#{maskapai[i]} : Nonstop 4 hours flight from #{u.origin.name} to #{u.destination.name}", u.id]}
      @origin_fligt = Airport.find(params['/flights'][:origin])
      @destination_flight =  Airport.find(params['/flights'][:destination])
    end 
  end
end
