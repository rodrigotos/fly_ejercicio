class Airport < ApplicationRecord
  belongs_to :city, class_name: "City", foreign_key: "city_id"
end
