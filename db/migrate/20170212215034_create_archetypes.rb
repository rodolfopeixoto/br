class CreateArchetypes < ActiveRecord::Migration[5.0]
  def change
    create_table :archetypes do |t|
      t.string :name
    end
    add_reference :properties, :archetype, index: true, foreign_key: true
  end
end
