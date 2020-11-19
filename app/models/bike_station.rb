class BikeStation < ApplicationRecord
    has_many :reviews
    has_many :check_ins
    has_many :users, through: :check_ins
    has_many :users, through: :reviews
    has_many :favorite_stations

    validates :available_bike_racks, numericality: { greater_than_or_equal_to: 0}
    validates :available_bike_racks, numericality: { less_than_or_equal_to: 8}
    
    validate :available_bike_racks_cannot_be_zero
    validate :available_bike_racks_cannot_be_more_than_eight

    def available_bike_racks_cannot_be_zero
        if available_bike_racks == 0
            errors.add(:available_bike_racks, "There are no bike racks available")
        end
    end

    def available_bike_racks_cannot_be_more_than_eight
        if available_bike_racks >= 8
            errors.add(:available_bike_racks, "This bike shelter is full")
        end
    end


end
