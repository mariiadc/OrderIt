class AddSeveralColumnstoEateries < ActiveRecord::Migration[5.2]
  def change
    add_column :eateries, :name, :string
    add_column :eateries, :type, :string
    add_column :eateries, :description, :string
    add_column :eateries, :address, :string
    add_column :eateries, :capacity, :integer
    add_column :eateries, :opening_hour, :time
    add_column :eateries, :closing_hour, :time
  end
end
