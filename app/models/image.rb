class Image < ApplicationRecord

  belongs_to :photographer

  attachment :image

end
