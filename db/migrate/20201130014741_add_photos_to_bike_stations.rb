class AddPhotosToBikeStations < ActiveRecord::Migration[6.0]
  def change
    add_column :bike_stations, :photos, :string
  end
end
