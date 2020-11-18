# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BikeStation.destroy_all
User.destroy_all

require 'uri'
require 'net/http'
require 'JSON'

uri = URI.parse("https://data.cityofnewyork.us/resource/dimy-qyej.json")
request = Net::HTTP::Get.new(uri)
request["Accept"] = "application/json"

req_options = {
    use_ssl: uri.scheme == "https"
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
end

bike_station_array = JSON.parse(response.body)

bike_station_array.each do |bike_station|
    locations =  bike_station.values[7]
    boroughs = bike_station.values[10]

    BikeStation.create!(
        location: locations,
        borough: boroughs,
        number_of_bike_racks: 8,
        available_bike_racks: 8
    )
end

aimee = User.create(name: "Aimee")
