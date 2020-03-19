class CreateOrderMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :order_menus do |t|
      t.references :order, foreign_key: true
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end

