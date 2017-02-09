class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :accommodates
      t.integer :bathrooms
      t.integer :number_of_rooms
      t.boolean :furnished
      t.integer :type_property
      t.boolean :single_room
      t.boolean :share_room
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
