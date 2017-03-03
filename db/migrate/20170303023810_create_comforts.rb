class CreateComforts < ActiveRecord::Migration[5.0]
  def change
    create_table :comforts do |t|
      t.boolean :kitchen
      t.boolean :tv
      t.boolean :air_conditioning
      t.boolean :washing_machine
      t.boolean :dryer
      t.boolean :garage
      t.boolean :cabo_tv
      t.boolean :pet
      t.boolean :smoke
      t.boolean :accessibility
      t.boolean :elevator
      t.boolean :intercom
      t.boolean :concierge
      t.boolean :pool
      t.boolean :service_area
      t.boolean :gym
      t.boolean :electric_iron
      t.boolean :notebook_space
      t.boolean :private_entrance
    end
    add_reference :properties, :comfort, index: true, foreign_key: true
  end
end
