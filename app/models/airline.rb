class Airline < ApplicationRecord
  has_many :flights, class_mame: "Flight"
  has_many :planes, class_name: "Plane"
end
