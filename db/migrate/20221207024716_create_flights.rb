class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :start
      t.integer :flight_duration

      t.timestamps
    end
  end
end
