class Country < ApplicationRecord

  has_many :cities, dependent: :destroy

  attachment :country_img

end
