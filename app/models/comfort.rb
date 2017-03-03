class Comfort < ApplicationRecord
  validates :kitchen, :air_conditioning, :washing_machine, :dryer,
             :cabo_tv, :pet, :smoke, :accessibility, :elevator, :concierge, :pool, :service_area,
             :gym, :electric_iron, :notebook_space, :private_entrance, presence: false
end
