class Table < ApplicationRecord
  belongs_to :eatery
  has_many :clients_tables
end
