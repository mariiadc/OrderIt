class CreateQrCodeReaders < ActiveRecord::Migration[5.2]
  def change
    create_table :qr_code_readers do |t|
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
