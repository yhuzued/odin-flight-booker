class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params["booking"][:flight_id])
    @booking = @flight.bookings.build(booking_params)
  end

  def create
    @flight = Flight.find(params["booking"][:flight_id])
    @booking = @flight.bookings.build(booking_params)

    if @booking.save
      redirect_to root_path
    else
      # handle error
      logger.error "Error saving booking: #{@booking.errors.full_messages.join(', ')}"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
  
  
end
