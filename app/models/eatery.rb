class Eatery < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories
  has_many :events
  has_many :tables
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
