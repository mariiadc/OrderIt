class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :table_number
      t.boolean :ocupancy
      t.references :eatery, foreign_key: true

      t.timestamps
    end
  end
end
