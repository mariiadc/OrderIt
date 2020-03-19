class QrCodeReader < ApplicationRecord
  belongs_to :client
  has_many :qr_codes
end
