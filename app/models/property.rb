class Property < ApplicationRecord
  validates :title, :accommodates, :bathrooms, :number_of_rooms, :price, :description, presence: true
  belongs_to :archetype
end
