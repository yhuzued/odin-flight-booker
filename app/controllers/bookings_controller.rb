class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(allowed_post_params)
    if @booking.save
      redirect_to @booking, notice: "Great!"
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passangers = Passenger.where(booking_id: @booking.id)
  end

  private

  def allowed_post_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end  
end
