class Photographer < ApplicationRecord

  has_many :images, dependent: :destroy, inverse_of: :photographer
  accepts_nested_attributes_for :images, allow_destroy: true

  attachment :profile_img

 # フルネームを表示するためメソッドを定義

  def full_name
    self.last_name + self.first_name
  end


end
