class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport", foreign_key: "origin_airport_id", optional: true
  belongs_to :destination, class_name: "Airport", foreign_key: "destination_airport_id", optional: true
  belongs_to :airline, class_name: "Airline", foreign_key: "airline_id", optional: true
  has_many :flight_itineraries, class_name: "FlightItinerary"
end
