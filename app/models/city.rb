class City < ApplicationRecord

  belongs_to :countries
  has_many :photographers

  attachment :city_img

end
