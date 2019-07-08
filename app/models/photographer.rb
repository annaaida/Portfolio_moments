class Photographer < ApplicationRecord

  has_one :image, dependent: :destroy

  attachment :profile_img

 # フルネームを表示するためメソッドを定義

  def full_name
    self.last_name + self.first_name
  end

end
