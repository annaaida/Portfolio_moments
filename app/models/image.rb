class Image < ApplicationRecord

  belongs_to :photographer

  attachment :image_1
  attachment :image_2
  attachment :image_3
  attachment :image_4
  attachment :image_5
  attachment :image_6

end
