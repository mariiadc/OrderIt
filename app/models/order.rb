class Order < ApplicationRecord
  belongs_to :client
  has_many :order_menus
  has_many :reviews

end
