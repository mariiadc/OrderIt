class Category < ApplicationRecord
  belongs_to :eatery
  has_many :menues
end
