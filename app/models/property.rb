class Property < ApplicationRecord
  validates :title, :type_property, :accommodates, :bathrooms, :number_of_rooms, :price, :description, presence: true
end
