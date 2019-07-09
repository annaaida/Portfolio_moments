class Photographer < ApplicationRecord

  has_one :image, dependent: :destroy

  has_many :city_photographers
  has_many :cities, through: :city_photographers

  attachment :profile_img

 # フルネームを表示するためメソッドを定義

  def full_name
    self.last_name + self.first_name
  end

end
