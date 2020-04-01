class AddCoordinatesToEateries < ActiveRecord::Migration[5.2]
  def change
    add_column :eateries, :latitude, :float
    add_column :eateries, :longitude, :float
  end
end
