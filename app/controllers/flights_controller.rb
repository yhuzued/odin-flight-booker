class FlightsController < ApplicationController
  def index
    @airport_list = Airport.all.map { |u| [u.name, u.id ]}
    @departure_day = Flight.all.map { |u| [u.start, u.start ]}

    unless params["/flights"].nil?
      @available_flights = Flight.includes(:origin, :destination).where(origin: params["/flights"][:origin], destination: params["/flights"][:destination], start: params["/flights"][:departure_day]).map { |u| [u.origin.name, u.id]}
    end 
  end
end
