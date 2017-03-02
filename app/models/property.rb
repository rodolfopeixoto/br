class Property < ApplicationRecord
  validates :title, :accommodates, :bathrooms, :number_of_rooms, :price, :description, presence: true
  belongs_to :archetype
  belongs_to :rule, required: false
  accepts_nested_attributes_for :rule, allow_destroy: true
end
