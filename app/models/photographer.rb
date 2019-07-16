class Photographer < ApplicationRecord

  has_one :user, dependent: :destroy
  has_one :image, dependent: :destroy
  has_many :users, through: :favorites

  has_many :city_photographers
  has_many :cities, through: :city_photographers
  has_many :favorites, dependent: :destroy
  has_many :books
  has_many :reviews, dependent: :destroy

  attachment :profile_img

 # フルネームを表示するためメソッドを定義

  def full_name
    self.last_name + self.first_name
  end

 # いいね

  def favorited_by?(user)
	  favorites.where(user_id: user.id).exists?
  end

 # レビュー

  def reviewed_by?(user)
    reviews.where(user_id: user.id).exists?
  end

end
