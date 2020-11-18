class CreateBikeStations < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_stations do |t|
      t.string :location
      t.string :borough
      t.integer :bike_station_id
      t.integer :number_of_bike_racks
      t.integer :available_bike_racks
      t.timestamps
    end
  end
end
