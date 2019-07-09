class City < ApplicationRecord

  belongs_to :country
  has_many :photographers, through: :city_photographers

  attachment :city_img

end
