class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(allowed_post_params)
    if @booking.save
      redirect_to root_path
    else
      # handle error
      logger.error "Error saving booking: #{@booking.errors.full_messages.join(', ')}"
    end
  end

  private

  def allowed_post_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end  
end
