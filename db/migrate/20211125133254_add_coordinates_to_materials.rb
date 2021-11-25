class AddCoordinatesToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :latitude, :float
    add_column :materials, :longitude, :float
  end
end
