class Menu < ApplicationRecord
  belongs_to :category
  has_many :order_menus
  has_many :qr_codes
end
