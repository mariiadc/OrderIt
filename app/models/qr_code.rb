class QrCode < ApplicationRecord
  belongs_to :qr_code_reader
  belongs_to :menu
end
