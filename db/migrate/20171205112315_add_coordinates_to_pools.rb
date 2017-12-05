class AddCoordinatesToPools < ActiveRecord::Migration[5.1]
  def change
    add_column :pools, :latitude, :float
    add_column :pools, :longitude, :float
  end
end
