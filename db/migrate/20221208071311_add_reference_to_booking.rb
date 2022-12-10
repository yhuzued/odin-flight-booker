class AddReferenceToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :passenger, foreign_key: true
    add_reference :bookings, :flights, foreign_key: true
  end
end
