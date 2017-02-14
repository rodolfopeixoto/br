class RemoveTypePropertyFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :type_property, :integer
  end
end
