class DropBikeStationIdFromBikeStation < ActiveRecord::Migration[6.0]
  def change
    remove_column :bike_stations, :bike_station_id, :integer
  end
end
