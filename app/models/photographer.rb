class Photographer < ApplicationRecord

  # has_one :user, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user
  belongs_to :city
  has_many :books
  has_many :reviews, dependent: :destroy

  has_many :images, dependent: :destroy, inverse_of: :photographer
  accepts_nested_attributes_for :images, allow_destroy: true

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
