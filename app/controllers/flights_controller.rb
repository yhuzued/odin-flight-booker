class FlightsController < ApplicationController
  def index
    @index = Flight.all.includes(:origin, :destination)
    @origin = Airport.all.map{ |u| [ u.name, u.id ] }
    @destination = Airport.all.map{ |u| [ u.name, u.id ] }
    @flight_date = Flight.all.map{ |u| [ u.start, u.start ] }

    unless params["/"].nil?
      @search_flight = Flight.includes(:origin, :destination).where(start: params["/"][:date], origin: params["/"][:origin], destination: params["/"][:destination])
    end
  end
end
