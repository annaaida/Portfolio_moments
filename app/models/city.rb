class City < ApplicationRecord

  belongs_to :country
  has_many :photographer

  attachment :city_img

end
