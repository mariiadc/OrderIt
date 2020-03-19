class CreateClientsTables < ActiveRecord::Migration[5.2]
  def change
    create_table :clients_tables do |t|
      t.references :client, foreign_key: true
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
