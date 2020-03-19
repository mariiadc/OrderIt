class CreateQrCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :qr_codes do |t|
      t.references :qr_code_reader, foreign_key: true
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
