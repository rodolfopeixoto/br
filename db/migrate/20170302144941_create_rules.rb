class CreateRules < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.text :description

      t.timestamps
    end
    add_reference :properties, :rule, index: true, foreign_key: true
  end
end
