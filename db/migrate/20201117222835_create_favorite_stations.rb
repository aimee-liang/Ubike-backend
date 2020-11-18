class CreateFavoriteStations < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_stations do |t|
      t.references :user, foreign_key: true
      t.references :bike_station, foreign_key: true
      t.string :location
      t.string :borough
      t.timestamps
    end
  end
end
